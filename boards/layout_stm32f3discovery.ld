/* Layout for the stm32f3discovery board, usable by the examples in this repository. */

MEMORY {
  /* The application region is 64 bytes (0x40) */
  FLASH (rx) : ORIGIN = 0x08020040, LENGTH = 0x00020000
  SRAM (rwx) : ORIGIN = 0x20004000, LENGTH = 48K
}

/*
 * Any change to STACK_SIZE should be accompanied by a corresponding change to
 * `elf2tab`'s `--stack` option
 */
STACK_SIZE = 2048;

MPU_MIN_ALIGN = 8K;

INCLUDE layout_generic.ld
