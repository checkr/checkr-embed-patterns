# README

A full stack example to show how Checkr Embeds work. Set your OAuth Access Token in `routes/index.js` to get started.

To use the Reports Overview embed, specify either a candidateId or externalCandidateId in `public/index.html`.

Read more at https://docs.checkr.com/embeds

This project has 2 main files:

- `public/index.html` shows the Embeds being used.
- `routes/index.js` shows how authentication acquisition works.

## Developing locally

* Run `git clone https://github.com/checkr/checkr-embeds-codesandbox-example` to download the project.
* Run `yarn install` to install dependencies.
* Run `yarn start` to start the app at http://localhost:3000.
* Add your API Key or OAccess Token to `routes/index.js`.