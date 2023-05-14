module.exports = {
  root: true,
  parser: '@typescript-eslint/parser',
  parserOptions: {
    ecmaVersion: 6,
    sourceType: 'module',
  },
  plugins: [
    '@typescript-eslint'
  ],
  rules: {
    '@typescript-eslint/curly': [0],
    '@typescript-eslint/naming-convention': [0],
    '@typescript-eslint/semi': [2],
  },
  ignorePatterns: [
    'out',
    'dist',
    '**/*.d.ts'
  ],
};
