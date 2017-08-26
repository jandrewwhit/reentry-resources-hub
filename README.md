# Reentry Resources Hub

We built the [Buncombe Reentry Resources Hub](http://www.buncombereentryhub.org/) to help those returning
to the community after a period of incarceration or suffering the consequences of a criminal conviction
on their record. Now we are working to scale this resource to every county in North Carolina.
We need help from developers ((Node, React) and writers.

If you are interested in helping, check out the tasks [here](https://github.com/CodeForNC/reentry-resources-hub/projects/3).
This is where we put tasks that don't require deep knowledge of all aspects of the project. If you are an experienced
developer and willing to commit more effort over a longer term, check out the tasks
on [this page](https://github.com/CodeForNC/reentry-resources-hub/projects/2).

## Installation

Make sure you have [Node](https://nodejs.org/en/) >= 4 installed (we strongly recommend using Node >= 6 and npm >= 3).
We prefer to use the [yarn](https://yarnpkg.com/) npm client.

````
    git submodule init
    yarn
    yarn start
````

If you prefer to use npm, the equivalent procedure is:

````
    git submodule init
    npm install
    npm start
````

The application is running at http://localhost:3000/. The server is also running, but at http://localhost:3001/.

## Deployment

In one terminal, run `node server/index.js`.  In another terminal, run `yarn build` or `npm run build`.

If you want to push the contents of the build folder to GitHub pages, run `yarn deploy`.
