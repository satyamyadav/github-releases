module.exports = {
  testEnvironment: 'node',
  testPathIgnorePatterns: ['/public/', 'node_modules'],
  collectCoverage: true,
  "collectCoverageFrom": [
    "src/*.{js,jsx}",
    "!**/node_modules/**"
  ]
};
