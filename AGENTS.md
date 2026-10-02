# AGENTS.md

This repository is a simple static portfolio website for a DevOps / cloud learning project. The site is intended to be hosted on Ubuntu with Nginx and viewed in a browser without a build step.

## Project structure

- [README.md](README.md): project overview, usage notes, and the required ownership proof text before deployment.
- [index.html](index.html): main landing page for the portfolio site.
- [style.css](style.css): all site styling and responsive layout rules.
- [privacy.html](privacy.html): privacy policy page.
- [terms.html](terms.html): terms and conditions page.
- [images](images): all static assets used by the website.

## Working conventions

- Keep this as a static HTML/CSS project. Do not introduce frameworks, package managers, or JavaScript build tooling unless explicitly requested.
- Favor direct, minimal edits to [index.html](index.html) and [style.css](style.css).
- Preserve the existing visual style and responsive behavior unless the task explicitly calls for redesign.
- Relative asset paths must remain valid. Image and CSS paths assume they are served from the project root.
- If you add new pages, keep them simple, self-contained, and consistent with the existing dark/modern portfolio aesthetic.

## Deployment expectations

- The site is expected to be served from the project root or via an Nginx document root.
- For DMI deployment tasks, keep the site accessible at the VM’s public IP and verify that the page renders correctly in a browser.
- Follow the ownership proof requirement documented in [README.md](README.md): the footer must clearly show the student/deployer details before submission.

## Verification guidance

- There is no application build/test suite in this repository.
- Validation is typically visual: open the page in a browser or preview it locally and confirm layout, links, and images load correctly.
- Use simple HTML/CSS debugging rather than adding new dependencies or toolchains.

## Typical tasks

- Update content in [index.html](index.html)
- Adjust the look and responsiveness in [style.css](style.css)
- Add or update supporting legal pages or assets under [images](images)
- Keep site content consistent with the portfolio / DevOps training theme

When making changes, prefer the smallest possible edit that solves the request and keeps the static-site pattern intact.
