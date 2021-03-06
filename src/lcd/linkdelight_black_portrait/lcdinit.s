	.include 'dpf.inc'

	.area LCDAUX (CODE)

_lcd_custom_init::
;
	mov	_uartcon,#0x0
	orl	p1,#0x17
;
	mov	p3dir,#0x0
	anl	p1dir,#0xe8
	anl	p2dir,#0x1
	anl	p0dir,#0xfa
	orl	wdtcon,#0x20
	clr	LCD_CS
	clr	LCD_RST
	mov	a,#0x96
	lcall	X1565
	setb	LCD_RST
	mov	a,#0x96
	lcall	X1565
;
	mov	dptr,#_custom_initseq
	ljmp	_lcd_init_by_table
;
X1565:	mov	r5,a
X1566:	mov	r6,#0x18
X1568:	mov	r7,#0xfa
X156a:	djnz	r7,X156a
	djnz	r6,X1568
	djnz	r5,X1566
	ret	
;
; If custom backlight handling is needed, uncomment the following label
; and set LCD_BACKLIGHT_CUSTOM in dpfmodel.h
;
;_lcd_custom_setbacklight::

;
; If custom contrast handling is needed, uncomment the following label
; and set LCD_CONTRAST_CUSTOM in dpfmodel.h
;
;_lcd_custom_setcontrast::

	.area LCDAUX (CODE)


;backlight_table::
;	.db	If needed, put data for custom backlight handling here
;_custom_backlighttbl_len::  .db  . - backlight_table


;contrast_table::
;	.db	If needed, put data for custom contrast handling here
;_custom_contrasttbl_len::  .db  . - contrast_table

_custom_contrasttbl::
  .db  0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
_custom_contrasttbl_len::  .db  7

_custom_contrasttbl2::
  .db  0x71, 0x00, 0x71, 0x00, 0x91, 0x00, 0x91, 0x00, 0xff
_custom_contrasttbl2_len::  .db  9

_custom_contrasttbl2_offsets::
  .db  0x07
_custom_contrasttbl2_offsets_len::  .db  1

_custom_backlighttbl::
  .db  0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
  .db  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
  .db  0xff, 0xff
_custom_backlighttbl_len::  .db  22

_custom_backlighttbl2::
  .db  0x00, 0xfa, 0xf5, 0xf0, 0xeb, 0xe6, 0xdc, 0xd2, 0xc8, 0xbe
  .db  0xb4, 0xaa, 0xa0, 0x96, 0x8c, 0x82, 0x78, 0x50, 0x3c, 0x28
  .db  0x14, 0x0a
_custom_backlighttbl2_len::  .db  22

_custom_initseq::
  .db  0x71, 0xef, 0x93, 0x03, 0x80, 0x02, 0x71, 0xcf, 0x93, 0x00
  .db  0x81, 0x30, 0x71, 0xed, 0x94, 0x64, 0x03, 0x12, 0x81, 0x71
  .db  0xe8, 0x93, 0x85, 0x00, 0x78, 0x71, 0xcb, 0x95, 0x39, 0x2c
  .db  0x00, 0x34, 0x02, 0x71, 0xf7, 0x91, 0x20, 0x71, 0xea, 0x92
  .db  0x00, 0x00, 0x71, 0xe8, 0x93, 0x85, 0x0a, 0x78, 0x71, 0x3a
  .db  0x91, 0x55, 0x71, 0x36, 0x91, 0x18, 0x71, 0xc0, 0x91, 0x1d
  .db  0x71, 0xc1, 0x91, 0x12, 0x71, 0xc2, 0x91, 0x22, 0x71, 0xc5
  .db  0x92, 0x35, 0x3c, 0x71, 0xc7, 0x91, 0x97, 0x71, 0xb1, 0x92
  .db  0x00, 0x15, 0x71, 0xb4, 0x91, 0x06, 0x71, 0xb6, 0x92, 0x0a
  .db  0xa2, 0x71, 0xf2, 0x91, 0x00, 0x71, 0x26, 0x91, 0x01, 0x71
  .db  0xe0, 0x9f, 0x0f, 0x22, 0x1c, 0x1b, 0x08, 0x0f, 0x48, 0xb8
  .db  0x34, 0x05, 0x0c, 0x09, 0x0f, 0x07, 0x00, 0x71, 0xe1, 0x9f
  .db  0x00, 0x23, 0x24, 0x07, 0x10, 0x07, 0x38, 0x47, 0x4b, 0x0a
  .db  0x13, 0x06, 0x30, 0x38, 0x0f, 0x71, 0x11, 0x71, 0x29, 0xff
_custom_initseq_len::  .db  140

