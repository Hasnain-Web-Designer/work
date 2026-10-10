#!/bin/bash
# Prepares a fresh session to preview/render HyperFrames videos.
set -euo pipefail

cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}/video"

# Chrome Headless Shell lives in ~/.cache, so it must be fetched again in a new container.
npx --yes hyperframes@0.8.144 browser ensure >/dev/null 2>&1 || echo "hyperframes: browser ensure failed; run 'npx hyperframes browser ensure' in video/" >&2
