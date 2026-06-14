; =========================================================
; Game Engine Function: sub_13D05C
; Address            : 0x13D05C - 0x13D0F6
; =========================================================

13D05C:  PUSH            {R4-R7,LR}
13D05E:  ADD             R7, SP, #0xC
13D060:  PUSH.W          {R8}
13D064:  SUB             SP, SP, #0x28; float
13D066:  MOV             R6, R1
13D068:  MOV             R4, R0
13D06A:  BL              sub_12BC78
13D06E:  LDR             R0, =(_ZTV7EditBox - 0x13D07C); `vtable for'EditBox ...
13D070:  MOVS            R1, #0
13D072:  MOV             R8, R4
13D074:  STRD.W          R1, R1, [R4,#0x5C]
13D078:  ADD             R0, PC; `vtable for'EditBox
13D07A:  STR.W           R1, [R8,#0x58]!
13D07E:  ADDS            R0, #8
13D080:  STR             R0, [R4]
13D082:  MOVS            R0, #0x78 ; 'x'; unsigned int
13D084:  BLX             j__Znwj; operator new(uint)
13D088:  MOV             R5, R0
13D08A:  LDRB            R0, [R6]
13D08C:  LDRD.W          R2, R1, [R6,#4]
13D090:  ANDS.W          R3, R0, #1
13D094:  ITT EQ
13D096:  ADDEQ           R1, R6, #1
13D098:  LSREQ           R2, R0, #1
13D09A:  ADD             R0, SP, #0x38+var_1C
13D09C:  BL              sub_164D04
13D0A0:  LDR             R0, =(off_234980 - 0x13D0B0)
13D0A2:  VMOV.F32        S0, #0.5
13D0A6:  VMOV.F32        Q8, #1.0
13D0AA:  ADD             R2, SP, #0x38+var_30; int
13D0AC:  ADD             R0, PC; off_234980
13D0AE:  LDR             R0, [R0]; dword_238EC0
13D0B0:  VST1.64         {D16-D17}, [R2]
13D0B4:  VLDR            S2, [R0]
13D0B8:  VMUL.F32        S0, S2, S0
13D0BC:  ADD             R1, SP, #0x38+var_1C; int
13D0BE:  MOV             R0, R5; int
13D0C0:  MOVS            R3, #0; int
13D0C2:  VSTR            S0, [SP,#0x38+var_38]
13D0C6:  BL              sub_13D3DC
13D0CA:  LDRB.W          R0, [SP,#0x38+var_1C]
13D0CE:  STR             R5, [R4,#0x54]
13D0D0:  LSLS            R0, R0, #0x1F
13D0D2:  BEQ             loc_13D0DC
13D0D4:  LDR             R0, [SP,#0x38+var_14]; void *
13D0D6:  BLX             j__ZdlPv; operator delete(void *)
13D0DA:  LDR             R5, [R4,#0x54]
13D0DC:  MOV             R0, R4
13D0DE:  MOV             R1, R5
13D0E0:  BL              sub_12BDF6
13D0E4:  MOV             R0, R8
13D0E6:  MOV             R1, R6
13D0E8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
13D0EC:  MOV             R0, R4
13D0EE:  ADD             SP, SP, #0x28 ; '('
13D0F0:  POP.W           {R8}
13D0F4:  POP             {R4-R7,PC}
