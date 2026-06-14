; =========================================================
; Game Engine Function: sub_7FE48
; Address            : 0x7FE48 - 0x7FFD0
; =========================================================

7FE48:  PUSH            {R4-R7,LR}
7FE4A:  ADD             R7, SP, #0xC
7FE4C:  PUSH.W          {R8}
7FE50:  LDR             R1, =(dword_1A45F8 - 0x7FE5C)
7FE52:  MOVS            R5, #0
7FE54:  LDR             R0, =(_ZNSt6__ndk16threadD2Ev_ptr - 0x7FE5E)
7FE56:  LDR             R4, =(off_110560 - 0x7FE60)
7FE58:  ADD             R1, PC; dword_1A45F8 ; obj
7FE5A:  ADD             R0, PC; _ZNSt6__ndk16threadD2Ev_ptr
7FE5C:  ADD             R4, PC; off_110560
7FE5E:  STR             R5, [R1]
7FE60:  LDR             R0, [R0]; std::thread::~thread() ; lpfunc
7FE62:  MOV             R2, R4; lpdso_handle
7FE64:  BLX             __cxa_atexit
7FE68:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x7FE72)
7FE6A:  MOV             R2, R4; lpdso_handle
7FE6C:  LDR             R1, =(dword_1A4600 - 0x7FE74)
7FE6E:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
7FE70:  ADD             R1, PC; dword_1A4600 ; obj
7FE72:  LDR             R0, [R0]; std::string::~string() ; lpfunc
7FE74:  STRD.W          R5, R5, [R1]
7FE78:  STR             R5, [R1,#(dword_1A4608 - 0x1A4600)]
7FE7A:  BLX             __cxa_atexit
7FE7E:  LDR             R1, =(dword_1A4980 - 0x7FE88)
7FE80:  MOV             R2, R4; lpdso_handle
7FE82:  LDR             R0, =(sub_7F43C+1 - 0x7FE8A)
7FE84:  ADD             R1, PC; dword_1A4980 ; obj
7FE86:  ADD             R0, PC; sub_7F43C ; lpfunc
7FE88:  STRD.W          R5, R5, [R1]
7FE8C:  STR             R5, [R1,#(dword_1A4988 - 0x1A4980)]
7FE8E:  BLX             __cxa_atexit
7FE92:  LDR             R1, =(dword_1A498C - 0x7FE9C)
7FE94:  MOV             R2, R4; lpdso_handle
7FE96:  LDR             R0, =(sub_7F484+1 - 0x7FE9E)
7FE98:  ADD             R1, PC; dword_1A498C ; obj
7FE9A:  ADD             R0, PC; sub_7F484 ; lpfunc
7FE9C:  STRD.W          R5, R5, [R1]
7FEA0:  STR             R5, [R1,#(dword_1A4994 - 0x1A498C)]
7FEA2:  BLX             __cxa_atexit
7FEA6:  LDR             R1, =(dword_1A4998 - 0x7FEB0)
7FEA8:  MOV             R2, R4; lpdso_handle
7FEAA:  LDR             R0, =(sub_7F4CC+1 - 0x7FEB2)
7FEAC:  ADD             R1, PC; dword_1A4998 ; obj
7FEAE:  ADD             R0, PC; sub_7F4CC ; lpfunc
7FEB0:  STRD.W          R5, R5, [R1]
7FEB4:  STR             R5, [R1,#(dword_1A49A0 - 0x1A4998)]
7FEB6:  BLX             __cxa_atexit
7FEBA:  LDR             R1, =(dword_1A49A4 - 0x7FEC4)
7FEBC:  MOV             R2, R4; lpdso_handle
7FEBE:  LDR             R0, =(sub_7F514+1 - 0x7FEC6)
7FEC0:  ADD             R1, PC; dword_1A49A4 ; obj
7FEC2:  ADD             R0, PC; sub_7F514 ; lpfunc
7FEC4:  STRD.W          R5, R5, [R1]
7FEC8:  STR             R5, [R1,#(dword_1A49AC - 0x1A49A4)]
7FECA:  BLX             __cxa_atexit
7FECE:  LDR             R4, =(dword_1A4680 - 0x7FED6)
7FED0:  MOVS            R0, #0x80
7FED2:  ADD             R4, PC; dword_1A4680
7FED4:  STR             R0, [R4]
7FED6:  MOV.W           R0, #0x300; unsigned int
7FEDA:  BLX             j__Znaj; operator new[](uint)
7FEDE:  LDR             R1, [R4]
7FEE0:  STR.W           R5, [R4,#(dword_1A4780 - 0x1A4680)]
7FEE4:  CMP             R1, #1
7FEE6:  STR.W           R5, [R4,#(dword_1A4700 - 0x1A4680)]
7FEEA:  STR             R0, [R4,#(dword_1A4684 - 0x1A4680)]
7FEEC:  BLS             loc_7FF9C
7FEEE:  LDR             R0, =(sub_7F55C+1 - 0x7FEF8)
7FEF0:  LDR             R1, =(dword_1A4680 - 0x7FEFA)
7FEF2:  LDR             R2, =(off_110560 - 0x7FEFC)
7FEF4:  ADD             R0, PC; sub_7F55C ; lpfunc
7FEF6:  ADD             R1, PC; dword_1A4680 ; obj
7FEF8:  ADD             R2, PC; off_110560 ; lpdso_handle
7FEFA:  BLX             __cxa_atexit
7FEFE:  LDR             R4, =(dword_1A4800 - 0x7FF08)
7FF00:  MOV.W           R0, #0x200
7FF04:  ADD             R4, PC; dword_1A4800
7FF06:  STR             R0, [R4]
7FF08:  MOV.W           R0, #0x900; unsigned int
7FF0C:  BLX             j__Znaj; operator new[](uint)
7FF10:  LDR             R1, [R4]
7FF12:  STR.W           R5, [R4,#(dword_1A4900 - 0x1A4800)]
7FF16:  CMP             R1, #1
7FF18:  STR.W           R5, [R4,#(dword_1A4880 - 0x1A4800)]
7FF1C:  STR             R0, [R4,#(dword_1A4804 - 0x1A4800)]
7FF1E:  BLS             loc_7FFAE
7FF20:  LDR             R0, =(sub_7F5DE+1 - 0x7FF2A)
7FF22:  LDR             R1, =(dword_1A4800 - 0x7FF2C)
7FF24:  LDR             R2, =(off_110560 - 0x7FF2E)
7FF26:  ADD             R0, PC; sub_7F5DE ; lpfunc
7FF28:  ADD             R1, PC; dword_1A4800 ; obj
7FF2A:  ADD             R2, PC; off_110560 ; lpdso_handle
7FF2C:  MOV             R8, R2
7FF2E:  BLX             __cxa_atexit
7FF32:  LDR             R6, =(dword_1A4610 - 0x7FF3E)
7FF34:  MOV.W           R0, #0x578; unsigned int
7FF38:  MOVS            R4, #0
7FF3A:  ADD             R6, PC; dword_1A4610
7FF3C:  STRD.W          R4, R4, [R6]
7FF40:  STR             R4, [R6,#(dword_1A4618 - 0x1A4610)]
7FF42:  BLX             j__Znwj; operator new(uint)
7FF46:  MOV.W           R1, #0x578; n
7FF4A:  ADD.W           R5, R0, #0x578
7FF4E:  STR             R5, [R6,#(dword_1A4618 - 0x1A4610)]
7FF50:  STR             R0, [R6]
7FF52:  BLX             sub_10967C
7FF56:  LDR             R0, =(sub_7F660+1 - 0x7FF62)
7FF58:  MOV             R1, R6; obj
7FF5A:  MOV             R2, R8; lpdso_handle
7FF5C:  STR             R5, [R6,#(dword_1A4614 - 0x1A4610)]
7FF5E:  ADD             R0, PC; sub_7F660 ; lpfunc
7FF60:  MOV             R5, R0
7FF62:  BLX             __cxa_atexit
7FF66:  LDR             R6, =(dword_1A461C - 0x7FF70)
7FF68:  MOV.W           R0, #0x578; unsigned int
7FF6C:  ADD             R6, PC; dword_1A461C
7FF6E:  STRD.W          R4, R4, [R6]
7FF72:  STR             R4, [R6,#(dword_1A4624 - 0x1A461C)]
7FF74:  BLX             j__Znwj; operator new(uint)
7FF78:  MOV.W           R1, #0x578; n
7FF7C:  ADD.W           R4, R0, #0x578
7FF80:  STR             R4, [R6,#(dword_1A4624 - 0x1A461C)]
7FF82:  STR             R0, [R6]
7FF84:  BLX             sub_10967C
7FF88:  STR             R4, [R6,#(dword_1A4620 - 0x1A461C)]
7FF8A:  MOV             R0, R5
7FF8C:  MOV             R1, R6
7FF8E:  MOV             R2, R8
7FF90:  POP.W           {R8}
7FF94:  POP.W           {R4-R7,LR}
7FF98:  B.W             sub_10C188
7FF9C:  MOVS            R0, #8; thrown_size
7FF9E:  BLX             j___cxa_allocate_exception
7FFA2:  LDR             R1, =(aSize2 - 0x7FFAA); "size < 2" ...
7FFA4:  MOV             R4, R0
7FFA6:  ADD             R1, PC; "size < 2"
7FFA8:  BL              sub_7FE30
7FFAC:  B               loc_7FFBE
7FFAE:  MOVS            R0, #8; thrown_size
7FFB0:  BLX             j___cxa_allocate_exception
7FFB4:  LDR             R1, =(aSize2 - 0x7FFBC); "size < 2" ...
7FFB6:  MOV             R4, R0
7FFB8:  ADD             R1, PC; "size < 2"
7FFBA:  BL              sub_7FE30
7FFBE:  LDR             R0, =(_ZTISt16invalid_argument_ptr - 0x7FFC6)
7FFC0:  LDR             R2, =(_ZNSt16invalid_argumentD2Ev_ptr_0 - 0x7FFC8)
7FFC2:  ADD             R0, PC; _ZTISt16invalid_argument_ptr
7FFC4:  ADD             R2, PC; _ZNSt16invalid_argumentD2Ev_ptr_0
7FFC6:  LDR             R1, [R0]; lptinfo
7FFC8:  MOV             R0, R4; void *
7FFCA:  LDR             R2, [R2]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
7FFCC:  BLX             j___cxa_throw
