	.include 'dpf.inc'

	.area LCDAUX (CODE)

_lcd_custom_init::
	lcall	lcd_reset
;
	mov	dptr,#_custom_initseq
	ljmp	_lcd_init_by_table

;
; If custom backlight handling is needed, uncomment the following label
; and set LCD_BACKLIGHT_CUSTOM in dpfmodel.h
; r3 contains brightness value (0 .. LCD_MAX_BRIGHTNESS_VALUE)
;
;_lcd_custom_setbacklight::

;
; If custom contrast handling is needed, uncomment the following label
; and set LCD_CONTRAST_CUSTOM in dpfmodel.h
; r3 contains contrast value (1 .. LCD_MAX_CONTRAST_VALUE)
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
	.db	0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
_custom_contrasttbl_len::  .db  7

_custom_contrasttbl2::
	.db	0x71, 0x00, 0x71, 0x00, 0x91, 0x00, 0x91, 0x00, 0xff
_custom_contrasttbl2_len::  .db  9

_custom_contrasttbl2_offsets::
	.db	0x07
_custom_contrasttbl2_offsets_len::  .db  1

_custom_backlighttbl::
	.db	0x2e, 0x32, 0x36, 0x3a, 0x3e, 0x42, 0x46, 0x4a, 0x4e, 0x52
	.db	0x56, 0x5a, 0x5e, 0x62, 0x66, 0x6a, 0x6e, 0x72, 0x76, 0x7a
	.db	0x7e
_custom_backlighttbl_len::  .db  21

_custom_backlighttbl2::
_custom_backlighttbl2_len::  .db  0

_custom_initseq::
	.db	0x00, 0xb0, 0x64, 0x11, 0xb0, 0x0a, 0x10, 0xb0, 0x64, 0x11
	.db	0xb0, 0x78, 0x71, 0xcf, 0x91, 0x00, 0x91, 0xc1, 0x91, 0x30
	.db	0x71, 0xed, 0x91, 0x64, 0x91, 0x03, 0x91, 0x12, 0x91, 0x81
	.db	0x71, 0xe8, 0x91, 0x85, 0x91, 0x00, 0x91, 0x79, 0x71, 0xcb
	.db	0x91, 0x39, 0x91, 0x2c, 0x91, 0x00, 0x91, 0x34, 0x91, 0x02
	.db	0x71, 0xf7, 0x91, 0x20, 0x71, 0xea, 0x91, 0x00, 0x91, 0x00
	.db	0x71, 0xc0, 0x91, 0x3f, 0x71, 0xc1, 0x91, 0x12, 0x71, 0xc5
	.db	0x91, 0x20, 0x91, 0x3f, 0x71, 0xc7, 0x91, 0x8c, 0x71, 0x3a
	.db	0x91, 0x55, 0x71, 0x36, 0x91, 0x68, 0x71, 0xb1, 0x91, 0x00
	.db	0x91, 0x17, 0x71, 0xb6, 0x91, 0x0a, 0x91, 0xa2, 0x71, 0x26
	.db	0x91, 0x01, 0x71, 0xe0, 0x91, 0x0f, 0x91, 0x15, 0x91, 0x1c
	.db	0x91, 0x1b, 0x91, 0x08, 0x91, 0x0f, 0x91, 0x48, 0x91, 0xb8
	.db	0x91, 0x34, 0x91, 0x00, 0x91, 0x0f, 0x91, 0x01, 0x91, 0x0f
	.db	0x91, 0x0c, 0x91, 0x00, 0x71, 0xe1, 0x91, 0x00, 0x91, 0x2a
	.db	0x91, 0x24, 0x91, 0x07, 0x91, 0x10, 0x91, 0x07, 0x91, 0x38
	.db	0x91, 0x47, 0x91, 0x4b, 0x91, 0x0f, 0x91, 0x10, 0x91, 0x0e
	.db	0x91, 0x30, 0x91, 0x33, 0x91, 0x0f, 0x71, 0x11, 0xb0, 0x78
	.db	0x71, 0x29, 0xff
_custom_initseq_len::  .db  173

