OUTPUT_ARCH(m68k)
STARTUP(crt0.o)

SECTIONS
{

  .text :
  {
    __text_start = . ;
    *(.text)
    . = ALIGN (4);
    *(.rodata .rodata.*)
    . = ALIGN(4);
    __end_text = .;
    etext = .;
  }

  .reserved :
  {
    . = ALIGN(4);    
    . += 512;
    sp_ptr = .;
  }

}
