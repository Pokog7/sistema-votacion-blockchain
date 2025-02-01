# Sistema de Votación en Blockchain

Este proyecto es un sistema de votación descentralizado construido sobre la blockchain. Permite a los usuarios votar por propuestas de manera segura y transparente utilizando contratos inteligentes.

## Características

- **Votación descentralizada**: Los votos se registran en la blockchain, lo que garantiza transparencia e inmutabilidad.
- **Interfaz amigable**: Un frontend en React.js permite a los usuarios conectar sus billeteras y votar fácilmente.
- **Contrato inteligente**: Desarrollado en Solidity y desplegado en una red blockchain compatible con Ethereum.

## Tecnologías Utilizadas

- **Frontend**: React.js, Ethers.js, Bootstrap.
- **Blockchain**: Solidity, Truffle, Ganache.
- **Red Blockchain**: Sonic Labs (o la red que hayas utilizado).

## Configuración

### Requisitos

- Node.js (v16 o superior)
- MetaMask (extensión del navegador)
- Truffle (opcional, para desarrollo local)

### Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/sistema-votacion-blockchain.git

   Instala las dependencias:

bash
Copy
cd sistema-votacion-blockchain
npm install
Configura tu entorno:

Crea un archivo .env en la raíz del proyecto y agrega las variables de entorno necesarias (por ejemplo, la URL del RPC).

Inicia la aplicación:

bash
Copy
npm start
Despliegue del Contrato Inteligente
Compila el contrato:

bash
Copy
truffle compile
Despliega el contrato en la red de Sonic Labs (o la red que estés utilizando):

bash
Copy
truffle migrate --network sonic
Uso
Conecta tu billetera (MetaMask) a la red correcta.

Selecciona una propuesta y vota.

Verifica los resultados en tiempo real.

Contribución
Si deseas contribuir a este proyecto, sigue estos pasos:

Haz un fork del repositorio.

Crea una rama con tu nueva funcionalidad (git checkout -b nueva-funcionalidad).

Realiza tus cambios y haz commit (git commit -m "Agrega nueva funcionalidad").

Sube los cambios a tu repositorio (git push origin nueva-funcionalidad).

Abre un Pull Request en GitHub.

Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.
