	.include 'dpf.inc'

	.area LCDAUX (CODE)

_lcd_custom_init::
	mov	dptr,#_custom_initseq
	ljmp	_lcd_init_by_table

_lcd_custom_setcontrast::
	ljmp	_lcd_set_contrast_by_table

	.area LCDAUX (CODE)

_custom_contrasttbl::
  .db  0x26, 0x30, 0x32, 0x34, 0x36, 0x38, 0x3a
_custom_contrasttbl_len::  .db  7

_custom_contrasttbl2::
  .db  0x71, 0x00, 0x71, 0x13, 0x91, 0x0c, 0x91, 0x00, 0xff
_custom_contrasttbl2_len::  .db  9

_custom_contrasttbl2_offsets::
  .db  0x07
_custom_contrasttbl2_offsets_len::  .db  1

_custom_backlighttbl::
  .db  0x9d, 0xa2, 0xa7, 0xac, 0xb1, 0xb6, 0xbb, 0xc0, 0xc5, 0xca
  .db  0xcf, 0xd4, 0xd9, 0xde, 0xe3, 0xe8, 0xed, 0xf2, 0xf6, 0xf8
  .db  0xfc, 0xfc
_custom_backlighttbl_len::  .db  22

_custom_backlighttbl2::
_custom_backlighttbl2_len::  .db  0

_custom_initseq::
  .db  0x00, 0xb0, 0x64, 0x11, 0xb0, 0x0a, 0x10, 0xb0, 0x64, 0x11
  .db  0xb0, 0xff, 0x71, 0x11, 0xb0, 0x78, 0x71, 0xc3, 0x91, 0x07
  .db  0x71, 0xc0, 0x91, 0x01, 0x91, 0x01, 0x71, 0xc5, 0x91, 0x82
  .db  0x71, 0xc6, 0x91, 0x0a, 0x71, 0xf0, 0x91, 0x5a, 0x71, 0xf2
  .db  0x91, 0x00, 0x71, 0xf3, 0x91, 0x31, 0x71, 0xb4, 0x91, 0x04
  .db  0x71, 0xe0, 0x9f, 0x00, 0x03, 0x04, 0x2d, 0x2a, 0x06, 0x1a
  .db  0x02, 0x03, 0x01, 0x0f, 0x0f, 0x00, 0x03, 0x03, 0x71, 0xe1
  .db  0x9f, 0x06, 0x2a, 0x2d, 0x04, 0x03, 0x00, 0x01, 0x1a, 0x03
  .db  0x03, 0x03, 0x00, 0x0f, 0x0f, 0x01, 0x71, 0x3a, 0x91, 0x55
  .db  0x71, 0x36, 0x91, 0xd8, 0x71, 0x2a, 0x94, 0x00, 0x00, 0x00
  .db  0xaf, 0x71, 0x2b, 0x94, 0x00, 0x00, 0x00, 0xdb, 0x71, 0x29
  .db  0x71, 0x2c, 0xff
_custom_initseq_len::  .db  113
