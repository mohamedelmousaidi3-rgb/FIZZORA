// Catch-all API handler for Vercel. Public files are served by Vercel directly.
const { server, initialize } = require('../server');
initialize();
module.exports = server.listeners('request')[0];
