export default {
  extends: [
    "stylelint-config-standard",
    "stylelint-config-standard-vue",
    "stylelint-config-tailwindcss",
  ],
  overrides: [
    {
      files: ["**/*.vue"],
      customSyntax: "postcss-html",
    },
  ],
};
