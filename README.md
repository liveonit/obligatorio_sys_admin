# Obligatorio Administración de Sistemas


## Requirements

- Vagrant y un virtualizador (vbox o kmv)
- Ansible

## Instalación

1. Instalar las maquinas virtuales ejecutando `make setup_vms`
2. Ejecutar `make configure_vms` para instalar los servicios necesarios a cada maquina virtual y ejecutarlos
3. Ejecutar `make connect_to_win_client` para conectarse a la shell de la maquina virtual de windows, luego de mucho tiempo en reposo, el cliente de windows se apaga, en caso que la misma este apagada y el comando para conectarse a la shell falle, ejecutar  `make power_on_win_client` para volver a encenderla.
4. Una vez conectado a la maquina de windows, es necesario agregar nuestro servidor DNS a la lista de servidores del cliente, para hacer esto, dentro de la maquina de windows debemos ejecutar `netsh interface ipv4 add dnsservers "Ethernet" address=192.168.56.12 index=1`, en caso que haya algun problema con el DNS, se puede ejecutar `dig +short @192.168.56.12 A web1.home.lan` para testear que ele servidor dns este funcionando correctamente.
5. Dentro de la maquina de windows podemos comenzar a ejecutar curl `http://haproxy.home.lan:443`, si ejecutamos multiples veces este curl, tendriamos que ver como la ip del web server deberia irse rotando debido a que el HaProxy hace un round-robin entre los servidores web.

# Test dns server
```
