HTML ?= assets/social-preview.html
PNG ?= assets/social-preview.png
VIEWPORT ?= 1200,630

.PHONY: social-preview social-preview-2x social-preview-check

PW := $(shell if command -v npx >/dev/null 2>&1; then echo 'npx -y'; \
  elif command -v pnpm >/dev/null 2>&1; then echo 'pnpm dlx'; \
  elif command -v bunx >/dev/null 2>&1; then echo 'bunx --bun'; \
  else echo ''; fi)

social-preview:
	@test -n "$(PW)" || (echo "No package runner found. Install npx, pnpm, or bunx."; exit 1)
	$(PW) playwright screenshot --browser=chromium --channel=chrome --viewport-size=$(VIEWPORT) "file://$(PWD)/$(HTML)" $(PNG)

social-preview-2x:
	@test -n "$(PW)" || (echo "No package runner found. Install npx, pnpm, or bunx."; exit 1)
	$(PW) playwright screenshot --browser=chromium --channel=chrome --device-scale-factor=2 --viewport-size=$(VIEWPORT) "file://$(PWD)/$(HTML)" $(PNG)

social-preview-check:
	sips -g pixelWidth -g pixelHeight $(PNG)
