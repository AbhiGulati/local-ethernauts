module.exports = {
    env: {
        browser: false,
        es2021: true,
        mocha: true,
        node: true
    },
    plugins: ['@typescript-eslint'],
    extends: [
        'standard',
        // 'plugin:prettier/recommended',
        'plugin:node/recommended'
    ],
    parser: '@typescript-eslint/parser',
    parserOptions: {
        ecmaVersion: 12
    },
    rules: {
        'node/no-unsupported-features/es-syntax': [
            'error',
            { ignores: ['modules'] }
        ],
        'node/no-unpublished-import': [
            'error',
            {
                allowModules: ['chai']
            }
        ],
        indent: ['error', 4],
        semi: [2, 'always']
    }
};
