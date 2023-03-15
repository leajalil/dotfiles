# Requerimientos

1. Para la instalacion es necesario colocar la carpeta NVIM por ejemplo en el root _~/.config_
2. Luego abrir nvim en esa carpeta que se copio y ejecutar desde la consola de VIM el comando _PackagerInstall_
3. La configuración requiere las fuentes JetBrainsMono Nerd Font, las cuales se pueden descargar de [aqui](https://www.nerdfonts.com/font-downloads). Estas fuentes se pueden instalar de forma manual o
copiar los fuente .ttf en la carpeta de fonts. En mi caso era _~/.config/fonts_. Luego desde ese mismo raiz se debe ejecutar el siguiente comando:
  ```
  fc-cache -f -v
  ```

## null-ls

Para instalar los formatos utilizados usar:

- Formateo de python (autopep8): requirements.txt
- Formateo de markdown (mdformat): requirements.txt
- Formateo de vhdl (emacs_vhdl_mode): 
- Formateo de verilog/systemverilog (verible_verilog_format):
