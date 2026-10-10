# Video editing with HyperFrames

This repo uses [HyperFrames](https://github.com/heygen-com/hyperframes) (HTML → deterministic MP4).
The composition project lives in `video/` — read `video/CLAUDE.md` before editing it, and start
any video request with the `/hyperframes` skill (skills are vendored in `.claude/skills/`).

- Put source footage, images, and audio in `video/assets/`.
- Check: `cd video && npm run check` · Render: `cd video && npm run render` (output in `video/renders/`, gitignored).
- GSAP is vendored at `video/assets/vendor/gsap.min.js`; reference local scripts rather than
  CDNs, because cloud sessions may block `cdn.jsdelivr.net` and the render would fail.
- Refresh the skills with `cd video && npx hyperframes skills update`, then copy them from
  `~/.claude/skills/` back into `.claude/skills/`.
