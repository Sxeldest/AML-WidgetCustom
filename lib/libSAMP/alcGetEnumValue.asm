; =========================================================
; Game Engine Function: alcGetEnumValue
; Address            : 0x1BE01C - 0x1BE160
; =========================================================

1BE01C:  PUSH            {R4-R7,R11,LR}
1BE020:  ADD             R11, SP, #0x10
1BE024:  MOV             R6, R0
1BE028:  MOV             R5, R1
1BE02C:  CMP             R6, #0
1BE030:  BEQ             loc_1BE10C
1BE034:  LDR             R0, =(unk_3827A0 - 0x1BE040)
1BE038:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE03C:  BL              j_EnterCriticalSection
1BE040:  LDR             R0, =(dword_382838 - 0x1BE04C)
1BE044:  ADD             R1, PC, R0; dword_382838
1BE048:  MOV             R0, #0x2895C
1BE050:  LDR             R4, [R1]
1BE054:  CMP             R4, #0
1BE058:  ADDNE           R1, R4, R0
1BE05C:  CMPNE           R4, R6
1BE060:  BNE             loc_1BE050
1BE064:  CMP             R4, #0
1BE068:  BEQ             loc_1BE0B4
1BE06C:  DMB             ISH
1BE070:  LDREX           R0, [R4]
1BE074:  ADD             R3, R0, #1
1BE078:  STREX           R0, R3, [R4]
1BE07C:  CMP             R0, #0
1BE080:  BNE             loc_1BE070
1BE084:  LDR             R0, =(LogLevel_ptr - 0x1BE094)
1BE088:  DMB             ISH
1BE08C:  LDR             R0, [PC,R0]; LogLevel
1BE090:  LDR             R0, [R0]
1BE094:  CMP             R0, #4
1BE098:  BCC             loc_1BE0B4
1BE09C:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BE0B0); "ALCdevice_IncRef" ...
1BE0A0:  MOV             R2, R4
1BE0A4:  LDR             R1, =(aPIncreasingRef - 0x1BE0B4); "%p increasing refcount to %u\n" ...
1BE0A8:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BE0AC:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BE0B0:  BL              j_al_print
1BE0B4:  LDR             R0, =(unk_3827A0 - 0x1BE0C0)
1BE0B8:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE0BC:  BL              j_LeaveCriticalSection
1BE0C0:  CMP             R5, #0
1BE0C4:  BEQ             loc_1BE118
1BE0C8:  LDR             R0, =(off_2306B8 - 0x1BE0D8); "ALC_INVALID" ...
1BE0CC:  MOV             R6, #0
1BE0D0:  ADD             R7, PC, R0; off_2306B8
1BE0D4:  LDR             R0, [R7,R6,LSL#3]; s1
1BE0D8:  MOV             R1, R5; s2
1BE0DC:  BL              strcmp
1BE0E0:  CMP             R0, #0
1BE0E4:  BEQ             loc_1BE0F8
1BE0E8:  ADD             R6, R6, #1
1BE0EC:  CMP             R6, #0x2D ; '-'
1BE0F0:  BNE             loc_1BE0D4
1BE0F4:  MOV             R6, #0x2D ; '-'
1BE0F8:  LDR             R0, =(off_2306B8 - 0x1BE104); "ALC_INVALID" ...
1BE0FC:  ADD             R0, PC, R0; off_2306B8
1BE100:  ADD             R0, R0, R6,LSL#3
1BE104:  LDR             R5, [R0,#4]
1BE108:  B               loc_1BE14C
1BE10C:  MOV             R4, #0
1BE110:  CMP             R5, #0
1BE114:  BNE             loc_1BE0C8
1BE118:  LDR             R0, =(byte_382798 - 0x1BE124)
1BE11C:  LDRB            R0, [PC,R0]; byte_382798
1BE120:  CMP             R0, #0
1BE124:  BEQ             loc_1BE130
1BE128:  MOV             R0, #5; sig
1BE12C:  BL              raise
1BE130:  LDR             R0, =(dword_38283C - 0x1BE148)
1BE134:  CMP             R4, #0
1BE138:  MOV             R5, #0
1BE13C:  MOVW            R1, #0xA004
1BE140:  ADD             R0, PC, R0; dword_38283C
1BE144:  ADDNE           R0, R4, #0x24 ; '$'
1BE148:  STR             R1, [R0]
1BE14C:  CMP             R4, #0
1BE150:  MOVNE           R0, R4
1BE154:  BLNE            j_ALCdevice_DecRef
1BE158:  MOV             R0, R5
1BE15C:  POP             {R4-R7,R11,PC}
