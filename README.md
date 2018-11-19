# strapi-pr-2110-test-docker
This is for testing [PR 2110 of Strapi](https://github.com/strapi/strapi/pull/2110).

Running `docker-compose up` will create two services, Strapi with the code in the PR https://github.com/strapi/strapi/pull/2110 and MongoDB

## How to run

This assumes that you have docker and docker-compose installed in your machine and your machine has a POSIX-compatible shell. After cloning this repository,

1. Run `docker-compose build`. This can takes more than 10 mins.
2. Make your machine accessible from public domain, using anything like `localtunnel` or `ngrok`.
3. Run `PROXY_HOST=<YOUR_DOMAIN> docker-compose up`. The domain shouldn't have `http` nor `https` in front and something like `randomstring.localtunnel.me`.
4. Setup discord OAuth app from discord website.
5. Configure discord OAuth settings in Strapi in `https://<YOUR_DOMAIN>/plugins/users-permissions/providers`.
6. Hit `https://<YOUR_DOMAIN>/connect/discord to see if it asks permission. Alternatively, you can run [the React Login example app](https://github.com/strapi/strapi-examples/tree/master/login-react) to test.

The description above is about discord, but it should work with any providers.
