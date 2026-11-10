export default {
  extends: [
    "stylelint-config-standard",
    "stylelint-config-standard-vue",
    "stylelint-config-tailwindcss",
  ],
  rules: {
    "at-rule-prelude-no-invalid": [true, { ignoreAtRules: ["apply"] }],
  },
  overrides: [
    {
      files: ["**/*.vue"],
      customSyntax: "postcss-html",
    },
  ],
};
