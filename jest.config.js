module.exports = {
  testEnvironment: 'node',
  testPathIgnorePatterns: ['/public/', 'node_modules'],
  collectCoverage: true,
  "collectCoverageFrom": [
    "*.{js,jsx}",
    "!**/node_modules/**"
  ]
};
