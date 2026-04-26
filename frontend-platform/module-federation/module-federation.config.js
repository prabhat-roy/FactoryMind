// Module Federation across FactoryMind frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "factorymind_shell",
      remotes: {
        admin: "admin@https://admin.factorymind.internal/remoteEntry.js",
        partner: "partner@https://partner.factorymind.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
