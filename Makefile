DOCS_DIR := ./docs
ACTIONS_DIR := ./composite
ACTDOCS_IMAGE := ghcr.io/tmknom/actdocs

# 処理対象のファイルリスト
ACTION_FILES := $(wildcard $(ACTIONS_DIR)/*/action.yml)
DOC_FILES := $(patsubst $(ACTIONS_DIR)/%/action.yml,$(DOCS_DIR)/%.md,$(ACTION_FILES))

.PHONY: docs
docs: create_docs_dir generate_docs ## generate docs for all actions

.PHONY: create_docs_dir
create_docs_dir:
	mkdir -p $(DOCS_DIR)

.PHONY: generate_docs
generate_docs: create_docs_dir
	@echo "Generating all docs"
	@for action in $(ACTION_FILES); do \
		output="$(DOCS_DIR)/$$(basename $$(dirname $$action)).md"; \
		echo "Generating docs for $$action"; \
		docker run --rm -v "$$(pwd):/work" -w "/work" \
		$(ACTDOCS_IMAGE) inject --sort --omit --file=$$output $$action; \
	done

.PHONY: list
list: ## List all action files and their corresponding doc files
	@echo "Action files:"
	@echo $(ACTION_FILES) | tr ' ' '\n'
	@echo "\nDoc files:"
	@echo $(DOC_FILES) | tr ' ' '\n'

.PHONY: doc
doc: create_docs_dir ## Generate doc for a specific action. Usage: make doc ACTION=<action-name>
	@if [ -z "$(ACTION)" ]; then \
		echo "Error: ACTION is not set. Usage: make doc ACTION=<action-name>"; \
		exit 1; \
	fi
	@if [ ! -f "$(ACTIONS_DIR)/$(ACTION)/action.yml" ]; then \
		echo "Error: action.yml not found for $(ACTION)"; \
		exit 1; \
	fi
	@echo "Generating doc for $(ACTION)"
	@docker run --rm -v "$$(pwd):/work" -w "/work" \
	$(ACTDOCS_IMAGE) inject --sort --omit --file=$(DOCS_DIR)/$(ACTION).md $(ACTIONS_DIR)/$(ACTION)/action.yml
