# disable-mouse-in-linux
Disable in Linux
## Explicação 

### Me foi pedido para fazer um script para desativação do mouse numa  maquina desktop.
#### O que tenho até agora: 
- Utilizado do script bash
  O script consistem na utilização do xinput e na criação de um arquivo txt para pegar a saída do comando abaixo, onde o conteudo da arquivo é númeração do id dos mouses conecatados no barramento.
  ```
  xinput | grep -i mouse | grep -oi [0-9][0-9] > /tmp/tmp-id;
  ```
  Conteudo do script e lido por um for em bash e depois passado para o comando de xinput disable $valor (sendo o id passado no comando acima).
- Udevm: um sub serviço do systemctl
- Versão do script bash em python 
- O *.rule* para ser usada no gatilho de entrada no barramento usb, porem até agora eu consegui fazer funionar.
- *.service* para inicialização do script com a inicialização do OS no systemctl.
