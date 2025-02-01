const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemonic = 'tu frase semilla'; // ¡Nunca compartas esto públicamente!

module.exports = {
  networks: {
    sonic: {
      provider: () => new HDWalletProvider(mnemonic, 'https://rpc.blaze.soniclabs.com'), // Lanzada en SonicLabs
      network_id: '*', // Usa '*' para cualquier ID de red
      gas: 5500000,    // Límite de gas
      confirmations: 2, // Número de confirmaciones
      timeoutBlocks: 200, // Tiempo de espera para transacciones
      skipDryRun: true, // No ejecutar pruebas en seco
    },
  },
  compilers: {
    solc: {
      version: '0.8.0', // Asegúrate de usar la versión correcta de Solidity
    },
  },
};
