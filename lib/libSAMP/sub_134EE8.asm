; =========================================================
; Game Engine Function: sub_134EE8
; Address            : 0x134EE8 - 0x135078
; =========================================================

134EE8:  PUSH            {R4-R7,LR}
134EEA:  ADD             R7, SP, #0xC
134EEC:  PUSH.W          {R8}
134EF0:  VPUSH           {D8}
134EF4:  SUB             SP, SP, #0x18
134EF6:  MOVS            R1, #0
134EF8:  MOV             R4, R0
134EFA:  BL              sub_13D71C
134EFE:  LDR             R0, =(_ZTV13CommandLayout - 0x134F04); `vtable for'CommandLayout ...
134F00:  ADD             R0, PC; `vtable for'CommandLayout
134F02:  ADDS            R0, #8
134F04:  STR             R0, [R4]
134F06:  MOVS            R0, #0x70 ; 'p'; unsigned int
134F08:  BLX             j__Znwj; operator new(uint)
134F0C:  LDR             R1, =(aSave - 0x134F14); "Save" ...
134F0E:  MOV             R5, R0
134F10:  ADD             R1, PC; "Save"
134F12:  MOV             R0, SP; int
134F14:  BL              sub_DC6DC
134F18:  LDR             R0, =(off_234980 - 0x134F22)
134F1A:  VMOV.F32        S16, #0.5
134F1E:  ADD             R0, PC; off_234980
134F20:  LDR.W           R8, [R0]; dword_238EC0
134F24:  VLDR            S0, [R8]
134F28:  VMUL.F32        S0, S0, S16
134F2C:  VMOV            R2, S0
134F30:  MOV             R1, SP
134F32:  MOV             R0, R5
134F34:  BL              sub_13CE34
134F38:  LDRB.W          R0, [SP,#0x30+var_30]
134F3C:  STR             R5, [R4,#0x6C]
134F3E:  LSLS            R0, R0, #0x1F
134F40:  BEQ             loc_134F4A
134F42:  LDR             R0, [SP,#0x30+var_28]; void *
134F44:  BLX             j__ZdlPv; operator delete(void *)
134F48:  LDR             R5, [R4,#0x6C]
134F4A:  MOV             R0, R4
134F4C:  MOV             R1, R5
134F4E:  BL              sub_12BDF6
134F52:  MOVS            R0, #0x90; unsigned int
134F54:  BLX             j__Znwj; operator new(uint)
134F58:  LDR             R1, =(aHide - 0x134F60); "Hide" ...
134F5A:  MOV             R5, R0
134F5C:  ADD             R1, PC; "Hide"
134F5E:  MOV             R0, SP; int
134F60:  BL              sub_DC6DC
134F64:  VLDR            S0, [R8]
134F68:  VMUL.F32        S0, S0, S16
134F6C:  VMOV            R2, S0
134F70:  MOV             R1, SP
134F72:  MOV             R0, R5
134F74:  BL              sub_13CE34
134F78:  LDR             R0, =(_ZTV13CheckedButton - 0x134F84); `vtable for'CheckedButton ...
134F7A:  MOVS            R2, #0
134F7C:  LDRB.W          R1, [SP,#0x30+var_30]
134F80:  ADD             R0, PC; `vtable for'CheckedButton
134F82:  STR.W           R2, [R5,#0x88]
134F86:  ADDS            R0, #8
134F88:  STR             R0, [R5]
134F8A:  LSLS            R0, R1, #0x1F
134F8C:  STRB.W          R2, [R5,#0x70]
134F90:  STR             R5, [R4,#0x70]
134F92:  BEQ             loc_134F9C
134F94:  LDR             R0, [SP,#0x30+var_28]; void *
134F96:  BLX             j__ZdlPv; operator delete(void *)
134F9A:  LDR             R5, [R4,#0x70]
134F9C:  MOV             R0, R4
134F9E:  MOV             R1, R5
134FA0:  BL              sub_12BDF6
134FA4:  MOVS            R0, #0x70 ; 'p'; unsigned int
134FA6:  BLX             j__Znwj; operator new(uint)
134FAA:  LDR             R1, =(aClose_0 - 0x134FB2); "Close" ...
134FAC:  MOV             R6, R0
134FAE:  ADD             R1, PC; "Close"
134FB0:  MOV             R0, SP; int
134FB2:  BL              sub_DC6DC
134FB6:  VLDR            S0, [R8]
134FBA:  VMUL.F32        S0, S0, S16
134FBE:  VMOV            R2, S0
134FC2:  MOV             R5, SP
134FC4:  MOV             R0, R6
134FC6:  MOV             R1, R5
134FC8:  BL              sub_13CE34
134FCC:  LDRB.W          R0, [SP,#0x30+var_30]
134FD0:  STR             R6, [R4,#0x74]
134FD2:  LSLS            R0, R0, #0x1F
134FD4:  BEQ             loc_134FDE
134FD6:  LDR             R0, [SP,#0x30+var_28]; void *
134FD8:  BLX             j__ZdlPv; operator delete(void *)
134FDC:  LDR             R6, [R4,#0x74]
134FDE:  MOV             R0, R4
134FE0:  MOV             R1, R6
134FE2:  BL              sub_12BDF6
134FE6:  LDR             R0, [R4,#0x6C]
134FE8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x134FF0); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_0,std::allocator<CommandLayout::CommandLayout(void)::$_0>,void ()(void)> ...
134FEA:  STR             R5, [SP,#0x30+var_20]
134FEC:  ADD             R1, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_0,std::allocator<CommandLayout::CommandLayout(void)::$_0>,void ()(void)>
134FEE:  STR             R4, [SP,#0x30+var_2C]
134FF0:  ADDS            R1, #8
134FF2:  STR             R1, [SP,#0x30+var_30]
134FF4:  ADDS            R0, #0x58 ; 'X'
134FF6:  MOV             R1, R5
134FF8:  BL              sub_12C504
134FFC:  LDR             R0, [SP,#0x30+var_20]
134FFE:  CMP             R5, R0
135000:  BEQ             loc_135008
135002:  CBZ             R0, loc_135012
135004:  MOVS            R1, #5
135006:  B               loc_13500A
135008:  MOVS            R1, #4
13500A:  LDR             R2, [R0]
13500C:  LDR.W           R1, [R2,R1,LSL#2]
135010:  BLX             R1
135012:  LDR             R0, [R4,#0x70]
135014:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_1NS_9allocatorIS3_EEFvbEEE - 0x13501C); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_1,std::allocator<CommandLayout::CommandLayout(void)::$_1>,void ()(bool)> ...
135016:  STR             R5, [SP,#0x30+var_20]
135018:  ADD             R1, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_1,std::allocator<CommandLayout::CommandLayout(void)::$_1>,void ()(bool)>
13501A:  STR             R4, [SP,#0x30+var_2C]
13501C:  ADDS            R1, #8
13501E:  STR             R1, [SP,#0x30+var_30]
135020:  ADDS            R0, #0x78 ; 'x'
135022:  MOV             R1, R5
135024:  BL              sub_1359B8
135028:  LDR             R0, [SP,#0x30+var_20]
13502A:  CMP             R5, R0
13502C:  BEQ             loc_135034
13502E:  CBZ             R0, loc_13503E
135030:  MOVS            R1, #5
135032:  B               loc_135036
135034:  MOVS            R1, #4
135036:  LDR             R2, [R0]
135038:  LDR.W           R1, [R2,R1,LSL#2]
13503C:  BLX             R1
13503E:  LDR             R0, [R4,#0x74]
135040:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN13CommandLayoutC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x135048); `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_2,std::allocator<CommandLayout::CommandLayout(void)::$_2>,void ()(void)> ...
135042:  STR             R5, [SP,#0x30+var_20]
135044:  ADD             R1, PC; `vtable for'std::__function::__func<CommandLayout::CommandLayout(void)::$_2,std::allocator<CommandLayout::CommandLayout(void)::$_2>,void ()(void)>
135046:  STR             R4, [SP,#0x30+var_2C]
135048:  ADDS            R1, #8
13504A:  STR             R1, [SP,#0x30+var_30]
13504C:  ADDS            R0, #0x58 ; 'X'
13504E:  MOV             R1, R5
135050:  BL              sub_12C504
135054:  LDR             R0, [SP,#0x30+var_20]
135056:  CMP             R5, R0
135058:  BEQ             loc_135060
13505A:  CBZ             R0, loc_13506A
13505C:  MOVS            R1, #5
13505E:  B               loc_135062
135060:  MOVS            R1, #4
135062:  LDR             R2, [R0]
135064:  LDR.W           R1, [R2,R1,LSL#2]
135068:  BLX             R1
13506A:  MOV             R0, R4
13506C:  ADD             SP, SP, #0x18
13506E:  VPOP            {D8}
135072:  POP.W           {R8}
135076:  POP             {R4-R7,PC}
