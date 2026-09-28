# CLAUDE.md

## 1. Project Overview

This repository contains a simple static portfolio website for a DevOps and cloud learning project.

The website is built using HTML and CSS and is intended to remain lightweight, dependency-free, and easy to deploy.

Main project files:

- `index.html` — main portfolio/landing page
- `style.css` — layout, styling, responsiveness, and presentation
- `privacy.html` — privacy policy page
- `terms.html` — terms and conditions page
- `images/` — static image assets
- `README.md` — project documentation

Do not introduce unnecessary frameworks or dependencies.

---

## 2. Technology and Deployment

This is a static HTML/CSS website.

The project uses:

- HTML5
- CSS3
- Static image assets
- AWS S3 for static website hosting
- AWS CloudFront for content delivery
- Terraform for infrastructure as code

When discussing or planning cloud deployment, treat AWS S3, CloudFront, and Terraform as the project's intended cloud technologies.

Do not assume that a backend server or database is required.

---

## 3. Coding and Design Rules

Follow these rules when modifying the project:

- Use HTML and CSS only.
- Do not add JavaScript.
- Do not add React, Vue, Angular, or other frontend frameworks.
- Do not add Node.js or npm dependencies.
- Keep the website lightweight and dependency-free.
- Preserve the existing HTML structure unless a change is necessary.
- Reuse the existing `style.css` instead of creating unnecessary CSS files.
- Preserve existing images and image paths.
- Maintain responsive design for desktop and mobile screens.
- Keep the visual style consistent with the existing portfolio.
- Do not introduce unnecessary libraries or external dependencies.

If a requested feature requires JavaScript or React, explain that it conflicts with the project's "No JavaScript" convention and suggest an HTML/CSS-based alternative where possible.

---

## 4. Change and File Management Guidelines

Before making changes:

1. Inspect the relevant existing HTML and CSS.
2. Understand the current structure before editing.
3. Modify only the files required for the requested task.
4. Avoid unnecessary changes to unrelated files.
5. Keep filenames and existing asset paths unchanged unless there is a specific reason to change them.
6. Do not delete existing pages or assets without explicit instruction.
7. Keep `privacy.html` and `terms.html` functional and accessible.
8. Do not add build tools or package configuration unless explicitly required.

When making a change, briefly explain which files were modified and why.

---

## 5. Validation and Deployment Guidance

After making changes:

- Check the HTML structure for obvious errors.
- Check that links between pages still work.
- Check that image paths are correct.
- Check that the CSS is applied correctly.
- Verify the layout at different screen sizes.
- Confirm that no JavaScript or unnecessary dependencies were introduced.

For cloud deployment discussions, use the following project context:

- AWS S3 is used to host the static website.
- AWS CloudFront is used as the content delivery layer.
- Terraform is used to define and manage the AWS infrastructure as code.

When Claude is asked about deploying this project, explain the relationship between S3, CloudFront, and Terraform in the context of this static website.