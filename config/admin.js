module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'EORWiGJzWz0z19K5IzNPpw=='),
  },
  apiToken: {
    salt: env('API_TOKEN_SALT', 'KGtHgkqFMjA+HPb+U1cIiA=='),
  },
});
