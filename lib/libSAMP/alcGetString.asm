; =========================================================
; Game Engine Function: alcGetString
; Address            : 0x1BCC28 - 0x1BD5F8
; =========================================================

1BCC28:  PUSH            {R4-R6,R10,R11,LR}
1BCC2C:  ADD             R11, SP, #0x10
1BCC30:  MOV             R4, R0
1BCC34:  MOVW            R0, #0x1003
1BCC38:  CMP             R1, R0
1BCC3C:  BGT             loc_1BCD04
1BCC40:  CMP             R1, #0
1BCC44:  BEQ             loc_1BCEB0
1BCC48:  CMP             R1, #0x310
1BCC4C:  BEQ             loc_1BCEC0
1BCC50:  MOVW            R0, #0x311
1BCC54:  CMP             R1, R0
1BCC58:  BNE             def_1BCD30; jumptable 001BCD30 default case
1BCC5C:  LDR             R0, =(dword_382828 - 0x1BCC68)
1BCC60:  LDR             R0, [PC,R0]; dword_382828
1BCC64:  CMP             R0, #0
1BCC68:  BEQ             loc_1BCFF4
1BCC6C:  CMP             R4, #0
1BCC70:  BEQ             loc_1BD05C
1BCC74:  LDR             R0, =(unk_3827A0 - 0x1BCC80)
1BCC78:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCC7C:  BL              j_EnterCriticalSection
1BCC80:  LDR             R0, =(dword_382838 - 0x1BCC8C)
1BCC84:  ADD             R1, PC, R0; dword_382838
1BCC88:  MOV             R0, #0x2895C
1BCC90:  LDR             R6, [R1]
1BCC94:  CMP             R6, #0
1BCC98:  ADDNE           R1, R6, R0
1BCC9C:  CMPNE           R6, R4
1BCCA0:  BNE             loc_1BCC90
1BCCA4:  CMP             R6, #0
1BCCA8:  BEQ             loc_1BCCF4
1BCCAC:  DMB             ISH
1BCCB0:  LDREX           R0, [R6]
1BCCB4:  ADD             R3, R0, #1
1BCCB8:  STREX           R0, R3, [R6]
1BCCBC:  CMP             R0, #0
1BCCC0:  BNE             loc_1BCCB0
1BCCC4:  LDR             R0, =(LogLevel_ptr - 0x1BCCD4)
1BCCC8:  DMB             ISH
1BCCCC:  LDR             R0, [PC,R0]; LogLevel
1BCCD0:  LDR             R0, [R0]
1BCCD4:  CMP             R0, #4
1BCCD8:  BCC             loc_1BCCF4
1BCCDC:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BCCF0); "ALCdevice_IncRef" ...
1BCCE0:  MOV             R2, R6
1BCCE4:  LDR             R1, =(aPIncreasingRef - 0x1BCCF4); "%p increasing refcount to %u\n" ...
1BCCE8:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BCCEC:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BCCF0:  BL              j_al_print
1BCCF4:  LDR             R0, =(unk_3827A0 - 0x1BCD00)
1BCCF8:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCCFC:  BL              j_LeaveCriticalSection
1BCD00:  B               loc_1BD060
1BCD04:  MOVW            R0, #0x1004
1BCD08:  SUB             R0, R1, R0
1BCD0C:  CMP             R0, #0xF; switch 16 cases
1BCD10:  BLS             loc_1BCD58
1BCD14:  MOVW            R0, #0xA001; jumptable 001BCD64 default case
1BCD18:  SUB             R0, R1, R0
1BCD1C:  CMP             R0, #4; switch 5 cases
1BCD20:  BHI             def_1BCD30; jumptable 001BCD30 default case
1BCD24:  ADR             R1, jpt_1BCD30
1BCD28:  MOV             R0, R0,LSL#2
1BCD2C:  LDR             R0, [R0,R1]
1BCD30:  ADD             PC, R0, R1; switch jump
1BCD34:  DCD loc_1BCD48 - 0x1BCD34; jump table for switch statement
1BCD38:  DCD loc_1BD3FC - 0x1BCD34; jumptable 001BCD30 case 1
1BCD3C:  DCD loc_1BD40C - 0x1BCD34; jumptable 001BCD30 case 2
1BCD40:  DCD loc_1BD41C - 0x1BCD34; jumptable 001BCD30 case 3
1BCD44:  DCD loc_1BD42C - 0x1BCD34; jumptable 001BCD30 case 4
1BCD48:  LDR             R0, =(aInvalidDevice - 0x1BCD54); jumptable 001BCD30 case 0
1BCD4C:  ADD             R5, PC, R0; "Invalid Device"
1BCD50:  MOV             R0, R5
1BCD54:  POP             {R4-R6,R10,R11,PC}
1BCD58:  ADR             R1, jpt_1BCD64
1BCD5C:  MOV             R0, R0,LSL#2
1BCD60:  LDR             R0, [R0,R1]
1BCD64:  ADD             PC, R0, R1; switch jump
1BCD68:  DCD loc_1BCDA8 - 0x1BCD68; jump table for switch statement
1BCD6C:  DCD loc_1BD164 - 0x1BCD68; jumptable 001BCD64 case 1
1BCD70:  DCD loc_1BD1F4 - 0x1BCD68; jumptable 001BCD64 case 2
1BCD74:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD78:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD7C:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD80:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD84:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD88:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD8C:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD90:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD94:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD98:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCD9C:  DCD def_1BCD30 - 0x1BCD68; jumptable 001BCD30 default case
1BCDA0:  DCD loc_1BD29C - 0x1BCD68; jumptable 001BCD64 case 14
1BCDA4:  DCD loc_1BD3A4 - 0x1BCD68; jumptable 001BCD64 case 15
1BCDA8:  LDR             R0, =(dword_382818 - 0x1BCDB4); jumptable 001BCD64 case 0
1BCDAC:  LDR             R0, [PC,R0]; dword_382818
1BCDB0:  CMP             R0, #0
1BCDB4:  BNE             loc_1BCE18
1BCDB8:  LDR             R0, =(unk_382834 - 0x1BCDC8)
1BCDBC:  LDR             R1, =(sub_1BBB90 - 0x1BCDCC)
1BCDC0:  ADD             R0, PC, R0; unk_382834 ; once_control
1BCDC4:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BCDC8:  BL              pthread_once
1BCDCC:  LDR             R0, =(unk_3827A0 - 0x1BCDD8)
1BCDD0:  ADD             R5, PC, R0; unk_3827A0
1BCDD4:  MOV             R0, R5; mutex
1BCDD8:  BL              j_EnterCriticalSection
1BCDDC:  LDR             R0, =(dword_382818 - 0x1BCDE8)
1BCDE0:  ADD             R6, PC, R0; dword_382818
1BCDE4:  LDR             R0, [R6]; ptr
1BCDE8:  BL              free
1BCDEC:  LDR             R0, =(dword_3827A8 - 0x1BCDFC)
1BCDF0:  LDR             R1, =(dword_38281C - 0x1BCE08)
1BCDF4:  ADD             R0, PC, R0; dword_3827A8
1BCDF8:  LDR             R2, [R0,#(off_3827B4 - 0x3827A8)]
1BCDFC:  MOV             R0, #0
1BCE00:  STR             R0, [PC,R1]; dword_38281C
1BCE04:  STR             R0, [R6]
1BCE08:  MOV             R0, #0
1BCE0C:  BLX             R2
1BCE10:  MOV             R0, R5; mutex
1BCE14:  BL              j_LeaveCriticalSection
1BCE18:  CMP             R4, #0
1BCE1C:  BEQ             loc_1BD45C
1BCE20:  LDR             R0, =(unk_3827A0 - 0x1BCE2C)
1BCE24:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCE28:  BL              j_EnterCriticalSection
1BCE2C:  LDR             R0, =(dword_382838 - 0x1BCE38)
1BCE30:  ADD             R1, PC, R0; dword_382838
1BCE34:  MOV             R0, #0x2895C
1BCE3C:  LDR             R6, [R1]
1BCE40:  CMP             R6, #0
1BCE44:  ADDNE           R1, R6, R0
1BCE48:  CMPNE           R6, R4
1BCE4C:  BNE             loc_1BCE3C
1BCE50:  CMP             R6, #0
1BCE54:  BEQ             loc_1BCEA0
1BCE58:  DMB             ISH
1BCE5C:  LDREX           R0, [R6]
1BCE60:  ADD             R3, R0, #1
1BCE64:  STREX           R0, R3, [R6]
1BCE68:  CMP             R0, #0
1BCE6C:  BNE             loc_1BCE5C
1BCE70:  LDR             R0, =(LogLevel_ptr - 0x1BCE80)
1BCE74:  DMB             ISH
1BCE78:  LDR             R0, [PC,R0]; LogLevel
1BCE7C:  LDR             R0, [R0]
1BCE80:  CMP             R0, #4
1BCE84:  BCC             loc_1BCEA0
1BCE88:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BCE9C); "ALCdevice_IncRef" ...
1BCE8C:  MOV             R2, R6
1BCE90:  LDR             R1, =(aPIncreasingRef - 0x1BCEA0); "%p increasing refcount to %u\n" ...
1BCE94:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BCE98:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BCE9C:  BL              j_al_print
1BCEA0:  LDR             R0, =(unk_3827A0 - 0x1BCEAC)
1BCEA4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCEA8:  BL              j_LeaveCriticalSection
1BCEAC:  B               loc_1BD460
1BCEB0:  LDR             R0, =(aNoError - 0x1BCEBC); "No Error" ...
1BCEB4:  ADD             R5, PC, R0; "No Error"
1BCEB8:  MOV             R0, R5
1BCEBC:  POP             {R4-R6,R10,R11,PC}
1BCEC0:  CMP             R4, #0
1BCEC4:  BEQ             loc_1BD0C8
1BCEC8:  LDR             R0, =(unk_3827A0 - 0x1BCED4)
1BCECC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCED0:  BL              j_EnterCriticalSection
1BCED4:  LDR             R0, =(dword_382838 - 0x1BCEE0)
1BCED8:  ADD             R1, PC, R0; dword_382838
1BCEDC:  MOV             R0, #0x2895C
1BCEE4:  LDR             R2, [R1]
1BCEE8:  CMP             R2, #0
1BCEEC:  ADDNE           R1, R2, R0
1BCEF0:  CMPNE           R2, R4
1BCEF4:  BNE             loc_1BCEE4
1BCEF8:  CMP             R2, #0
1BCEFC:  BEQ             loc_1BD0BC
1BCF00:  DMB             ISH
1BCF04:  LDREX           R0, [R2]
1BCF08:  ADD             R3, R0, #1
1BCF0C:  STREX           R0, R3, [R2]
1BCF10:  CMP             R0, #0
1BCF14:  BNE             loc_1BCF04
1BCF18:  LDR             R0, =(LogLevel_ptr - 0x1BCF28)
1BCF1C:  DMB             ISH
1BCF20:  LDR             R0, [PC,R0]; LogLevel
1BCF24:  LDR             R0, [R0]
1BCF28:  CMP             R0, #4
1BCF2C:  BCC             loc_1BCF44
1BCF30:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BCF40); "ALCdevice_IncRef" ...
1BCF34:  LDR             R1, =(aPIncreasingRef - 0x1BCF44); "%p increasing refcount to %u\n" ...
1BCF38:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BCF3C:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BCF40:  BL              j_al_print
1BCF44:  LDR             R0, =(unk_3827A0 - 0x1BCF50)
1BCF48:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCF4C:  BL              j_LeaveCriticalSection
1BCF50:  LDR             R5, [R4,#0x20]
1BCF54:  MOV             R0, R4
1BCF58:  B               loc_1BD514
1BCF5C:  CMP             R4, #0; jumptable 001BCD30 default case
1BCF60:  BEQ             loc_1BD120
1BCF64:  LDR             R0, =(unk_3827A0 - 0x1BCF70)
1BCF68:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCF6C:  BL              j_EnterCriticalSection
1BCF70:  LDR             R0, =(dword_382838 - 0x1BCF7C)
1BCF74:  ADD             R1, PC, R0; dword_382838
1BCF78:  MOV             R0, #0x2895C
1BCF80:  LDR             R6, [R1]
1BCF84:  CMP             R6, #0
1BCF88:  ADDNE           R1, R6, R0
1BCF8C:  CMPNE           R6, R4
1BCF90:  BNE             loc_1BCF80
1BCF94:  CMP             R6, #0
1BCF98:  BEQ             loc_1BCFE4
1BCF9C:  DMB             ISH
1BCFA0:  LDREX           R0, [R6]
1BCFA4:  ADD             R3, R0, #1
1BCFA8:  STREX           R0, R3, [R6]
1BCFAC:  CMP             R0, #0
1BCFB0:  BNE             loc_1BCFA0
1BCFB4:  LDR             R0, =(LogLevel_ptr - 0x1BCFC4)
1BCFB8:  DMB             ISH
1BCFBC:  LDR             R0, [PC,R0]; LogLevel
1BCFC0:  LDR             R0, [R0]
1BCFC4:  CMP             R0, #4
1BCFC8:  BCC             loc_1BCFE4
1BCFCC:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BCFE0); "ALCdevice_IncRef" ...
1BCFD0:  MOV             R2, R6
1BCFD4:  LDR             R1, =(aPIncreasingRef - 0x1BCFE4); "%p increasing refcount to %u\n" ...
1BCFD8:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BCFDC:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BCFE0:  BL              j_al_print
1BCFE4:  LDR             R0, =(unk_3827A0 - 0x1BCFF0)
1BCFE8:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BCFEC:  BL              j_LeaveCriticalSection
1BCFF0:  B               loc_1BD124
1BCFF4:  LDR             R0, =(unk_382834 - 0x1BD004)
1BCFF8:  LDR             R1, =(sub_1BBB90 - 0x1BD008)
1BCFFC:  ADD             R0, PC, R0; unk_382834 ; once_control
1BD000:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BD004:  BL              pthread_once
1BD008:  LDR             R0, =(unk_3827A0 - 0x1BD014)
1BD00C:  ADD             R5, PC, R0; unk_3827A0
1BD010:  MOV             R0, R5; mutex
1BD014:  BL              j_EnterCriticalSection
1BD018:  LDR             R0, =(dword_382828 - 0x1BD024)
1BD01C:  ADD             R6, PC, R0; dword_382828
1BD020:  LDR             R0, [R6]; ptr
1BD024:  BL              free
1BD028:  LDR             R0, =(dword_3827E0 - 0x1BD038)
1BD02C:  LDR             R1, =(dword_38282C - 0x1BD044)
1BD030:  ADD             R0, PC, R0; dword_3827E0
1BD034:  LDR             R2, [R0,#(off_3827EC - 0x3827E0)]
1BD038:  MOV             R0, #0
1BD03C:  STR             R0, [PC,R1]; dword_38282C
1BD040:  STR             R0, [R6]
1BD044:  MOV             R0, #2
1BD048:  BLX             R2
1BD04C:  MOV             R0, R5; mutex
1BD050:  BL              j_LeaveCriticalSection
1BD054:  CMP             R4, #0
1BD058:  BNE             loc_1BCC74
1BD05C:  MOV             R6, #0
1BD060:  LDR             R0, =(dword_382848 - 0x1BD06C)
1BD064:  ADD             R4, PC, R0; dword_382848
1BD068:  LDR             R0, [R4]; ptr
1BD06C:  BL              free
1BD070:  LDR             R0, =(dword_382828 - 0x1BD080)
1BD074:  LDR             R1, =(byte_8F794 - 0x1BD088)
1BD078:  LDR             R0, [PC,R0]; dword_382828
1BD07C:  CMP             R0, #0
1BD080:  ADDEQ           R0, PC, R1; byte_8F794 ; s
1BD084:  BL              strdup
1BD088:  MOV             R5, R0
1BD08C:  CMP             R5, #0
1BD090:  STR             R5, [R4]
1BD094:  BNE             loc_1BD508
1BD098:  LDR             R0, =(byte_382798 - 0x1BD0A4)
1BD09C:  LDRB            R0, [PC,R0]; byte_382798
1BD0A0:  CMP             R0, #0
1BD0A4:  BEQ             loc_1BD43C
1BD0A8:  MOV             R0, #5; sig
1BD0AC:  BL              raise
1BD0B0:  LDR             R0, =(dword_382848 - 0x1BD0BC)
1BD0B4:  LDR             R5, [PC,R0]; dword_382848
1BD0B8:  B               loc_1BD440
1BD0BC:  LDR             R0, =(unk_3827A0 - 0x1BD0C8)
1BD0C0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD0C4:  BL              j_LeaveCriticalSection
1BD0C8:  LDR             R0, =(unk_382834 - 0x1BD0D8)
1BD0CC:  LDR             R1, =(sub_1BBB90 - 0x1BD0DC)
1BD0D0:  ADD             R0, PC, R0; unk_382834 ; once_control
1BD0D4:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BD0D8:  BL              pthread_once
1BD0DC:  LDR             R0, =(unk_3827A0 - 0x1BD0E8)
1BD0E0:  ADD             R4, PC, R0; unk_3827A0
1BD0E4:  MOV             R0, R4; mutex
1BD0E8:  BL              j_EnterCriticalSection
1BD0EC:  LDR             R0, =(dword_382828 - 0x1BD0F8)
1BD0F0:  ADD             R5, PC, R0; dword_382828
1BD0F4:  LDR             R0, [R5]; ptr
1BD0F8:  BL              free
1BD0FC:  LDR             R0, =(dword_3827E0 - 0x1BD10C)
1BD100:  LDR             R1, =(dword_38282C - 0x1BD118)
1BD104:  ADD             R0, PC, R0; dword_3827E0
1BD108:  LDR             R2, [R0,#(off_3827EC - 0x3827E0)]
1BD10C:  MOV             R0, #0
1BD110:  STR             R0, [PC,R1]; dword_38282C
1BD114:  STR             R0, [R5]
1BD118:  MOV             R0, #2
1BD11C:  B               loc_1BD5A4
1BD120:  MOV             R6, #0
1BD124:  LDR             R0, =(byte_382798 - 0x1BD130)
1BD128:  LDRB            R0, [PC,R0]; byte_382798
1BD12C:  CMP             R0, #0
1BD130:  BEQ             loc_1BD13C
1BD134:  MOV             R0, #5; sig
1BD138:  BL              raise
1BD13C:  LDR             R0, =(dword_38283C - 0x1BD154)
1BD140:  CMP             R6, #0
1BD144:  MOV             R5, #0
1BD148:  MOVW            R1, #0xA003
1BD14C:  ADD             R0, PC, R0; dword_38283C
1BD150:  ADDNE           R0, R6, #0x24 ; '$'
1BD154:  STR             R1, [R0]
1BD158:  BNE             loc_1BD510
1BD15C:  MOV             R0, R5
1BD160:  POP             {R4-R6,R10,R11,PC}
1BD164:  CMP             R4, #0; jumptable 001BCD64 case 1
1BD168:  BEQ             loc_1BD550
1BD16C:  LDR             R0, =(unk_3827A0 - 0x1BD178)
1BD170:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD174:  BL              j_EnterCriticalSection
1BD178:  LDR             R0, =(dword_382838 - 0x1BD184)
1BD17C:  ADD             R1, PC, R0; dword_382838
1BD180:  MOV             R0, #0x2895C
1BD188:  LDR             R2, [R1]
1BD18C:  CMP             R2, #0
1BD190:  ADDNE           R1, R2, R0
1BD194:  CMPNE           R2, R4
1BD198:  BNE             loc_1BD188
1BD19C:  CMP             R2, #0
1BD1A0:  BEQ             loc_1BD544
1BD1A4:  DMB             ISH
1BD1A8:  LDREX           R0, [R2]
1BD1AC:  ADD             R3, R0, #1
1BD1B0:  STREX           R0, R3, [R2]
1BD1B4:  CMP             R0, #0
1BD1B8:  BNE             loc_1BD1A8
1BD1BC:  LDR             R0, =(LogLevel_ptr - 0x1BD1CC)
1BD1C0:  DMB             ISH
1BD1C4:  LDR             R0, [PC,R0]; LogLevel
1BD1C8:  LDR             R0, [R0]
1BD1CC:  CMP             R0, #4
1BD1D0:  BCC             loc_1BD1E8
1BD1D4:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BD1E4); "ALCdevice_IncRef" ...
1BD1D8:  LDR             R1, =(aPIncreasingRef - 0x1BD1E8); "%p increasing refcount to %u\n" ...
1BD1DC:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BD1E0:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BD1E4:  BL              j_al_print
1BD1E8:  LDR             R0, =(unk_3827A0 - 0x1BD1F4)
1BD1EC:  ADD             R0, PC, R0; unk_3827A0
1BD1F0:  B               loc_1BCF4C
1BD1F4:  CMP             R4, #0; jumptable 001BCD64 case 2
1BD1F8:  BEQ             loc_1BD4BC
1BD1FC:  LDR             R0, =(unk_3827A0 - 0x1BD208)
1BD200:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD204:  BL              j_EnterCriticalSection
1BD208:  LDR             R0, =(dword_382838 - 0x1BD214)
1BD20C:  ADD             R1, PC, R0; dword_382838
1BD210:  MOV             R0, #0x2895C
1BD218:  LDR             R2, [R1]
1BD21C:  CMP             R2, #0
1BD220:  ADDNE           R1, R2, R0
1BD224:  CMPNE           R2, R4
1BD228:  BNE             loc_1BD218
1BD22C:  CMP             R2, #0
1BD230:  BEQ             loc_1BD5BC
1BD234:  DMB             ISH
1BD238:  LDREX           R0, [R2]
1BD23C:  ADD             R3, R0, #1
1BD240:  STREX           R0, R3, [R2]
1BD244:  CMP             R0, #0
1BD248:  BNE             loc_1BD238
1BD24C:  LDR             R0, =(LogLevel_ptr - 0x1BD25C)
1BD250:  DMB             ISH
1BD254:  LDR             R0, [PC,R0]; LogLevel
1BD258:  LDR             R0, [R0]
1BD25C:  CMP             R0, #4
1BD260:  BCC             loc_1BD278
1BD264:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BD274); "ALCdevice_IncRef" ...
1BD268:  LDR             R1, =(aPIncreasingRef - 0x1BD278); "%p increasing refcount to %u\n" ...
1BD26C:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BD270:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BD274:  BL              j_al_print
1BD278:  LDR             R0, =(unk_3827A0 - 0x1BD284)
1BD27C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD280:  BL              j_LeaveCriticalSection
1BD284:  MOV             R0, R4
1BD288:  BL              j_ALCdevice_DecRef
1BD28C:  LDR             R0, =(aAlcEnumerateAl - 0x1BD298); "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"... ...
1BD290:  ADD             R5, PC, R0; "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"...
1BD294:  MOV             R0, R5
1BD298:  POP             {R4-R6,R10,R11,PC}
1BD29C:  LDR             R0, =(dword_382820 - 0x1BD2A8); jumptable 001BCD64 case 14
1BD2A0:  LDR             R0, [PC,R0]; dword_382820
1BD2A4:  CMP             R0, #0
1BD2A8:  BNE             loc_1BD30C
1BD2AC:  LDR             R0, =(unk_382834 - 0x1BD2BC)
1BD2B0:  LDR             R1, =(sub_1BBB90 - 0x1BD2C0)
1BD2B4:  ADD             R0, PC, R0; unk_382834 ; once_control
1BD2B8:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BD2BC:  BL              pthread_once
1BD2C0:  LDR             R0, =(unk_3827A0 - 0x1BD2CC)
1BD2C4:  ADD             R5, PC, R0; unk_3827A0
1BD2C8:  MOV             R0, R5; mutex
1BD2CC:  BL              j_EnterCriticalSection
1BD2D0:  LDR             R0, =(dword_382820 - 0x1BD2DC)
1BD2D4:  ADD             R6, PC, R0; dword_382820
1BD2D8:  LDR             R0, [R6]; ptr
1BD2DC:  BL              free
1BD2E0:  LDR             R0, =(dword_3827A8 - 0x1BD2F0)
1BD2E4:  LDR             R1, =(dword_382824 - 0x1BD2FC)
1BD2E8:  ADD             R0, PC, R0; dword_3827A8
1BD2EC:  LDR             R2, [R0,#(off_3827B4 - 0x3827A8)]
1BD2F0:  MOV             R0, #0
1BD2F4:  STR             R0, [PC,R1]; dword_382824
1BD2F8:  STR             R0, [R6]
1BD2FC:  MOV             R0, #1
1BD300:  BLX             R2
1BD304:  MOV             R0, R5; mutex
1BD308:  BL              j_LeaveCriticalSection
1BD30C:  CMP             R4, #0
1BD310:  BEQ             loc_1BD4CC
1BD314:  LDR             R0, =(unk_3827A0 - 0x1BD320)
1BD318:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD31C:  BL              j_EnterCriticalSection
1BD320:  LDR             R0, =(dword_382838 - 0x1BD32C)
1BD324:  ADD             R1, PC, R0; dword_382838
1BD328:  MOV             R0, #0x2895C
1BD330:  LDR             R6, [R1]
1BD334:  CMP             R6, #0
1BD338:  ADDNE           R1, R6, R0
1BD33C:  CMPNE           R6, R4
1BD340:  BNE             loc_1BD330
1BD344:  CMP             R6, #0
1BD348:  BEQ             loc_1BD394
1BD34C:  DMB             ISH
1BD350:  LDREX           R0, [R6]
1BD354:  ADD             R3, R0, #1
1BD358:  STREX           R0, R3, [R6]
1BD35C:  CMP             R0, #0
1BD360:  BNE             loc_1BD350
1BD364:  LDR             R0, =(LogLevel_ptr - 0x1BD374)
1BD368:  DMB             ISH
1BD36C:  LDR             R0, [PC,R0]; LogLevel
1BD370:  LDR             R0, [R0]
1BD374:  CMP             R0, #4
1BD378:  BCC             loc_1BD394
1BD37C:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BD390); "ALCdevice_IncRef" ...
1BD380:  MOV             R2, R6
1BD384:  LDR             R1, =(aPIncreasingRef - 0x1BD394); "%p increasing refcount to %u\n" ...
1BD388:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BD38C:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BD390:  BL              j_al_print
1BD394:  LDR             R0, =(unk_3827A0 - 0x1BD3A0)
1BD398:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD39C:  BL              j_LeaveCriticalSection
1BD3A0:  B               loc_1BD4D0
1BD3A4:  LDR             R0, =(unk_382834 - 0x1BD3B4); jumptable 001BCD64 case 15
1BD3A8:  LDR             R1, =(sub_1BBB90 - 0x1BD3B8)
1BD3AC:  ADD             R0, PC, R0; unk_382834 ; once_control
1BD3B0:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BD3B4:  BL              pthread_once
1BD3B8:  LDR             R0, =(unk_3827A0 - 0x1BD3C4)
1BD3BC:  ADD             R4, PC, R0; unk_3827A0
1BD3C0:  MOV             R0, R4; mutex
1BD3C4:  BL              j_EnterCriticalSection
1BD3C8:  LDR             R0, =(dword_382820 - 0x1BD3D4)
1BD3CC:  ADD             R5, PC, R0; dword_382820
1BD3D0:  LDR             R0, [R5]; ptr
1BD3D4:  BL              free
1BD3D8:  LDR             R0, =(dword_3827A8 - 0x1BD3E8)
1BD3DC:  LDR             R1, =(dword_382824 - 0x1BD3F4)
1BD3E0:  ADD             R0, PC, R0; dword_3827A8
1BD3E4:  LDR             R2, [R0,#(off_3827B4 - 0x3827A8)]
1BD3E8:  MOV             R0, #0
1BD3EC:  STR             R0, [PC,R1]; dword_382824
1BD3F0:  STR             R0, [R5]
1BD3F4:  MOV             R0, #1
1BD3F8:  B               loc_1BD5A4
1BD3FC:  LDR             R0, =(aInvalidContext - 0x1BD408); jumptable 001BCD30 case 1
1BD400:  ADD             R5, PC, R0; "Invalid Context"
1BD404:  MOV             R0, R5
1BD408:  POP             {R4-R6,R10,R11,PC}
1BD40C:  LDR             R0, =(aInvalidEnum - 0x1BD418); jumptable 001BCD30 case 2
1BD410:  ADD             R5, PC, R0; "Invalid Enum"
1BD414:  MOV             R0, R5
1BD418:  POP             {R4-R6,R10,R11,PC}
1BD41C:  LDR             R0, =(aInvalidValue - 0x1BD428); jumptable 001BCD30 case 3
1BD420:  ADD             R5, PC, R0; "Invalid Value"
1BD424:  MOV             R0, R5
1BD428:  POP             {R4-R6,R10,R11,PC}
1BD42C:  LDR             R0, =(aOutOfMemory - 0x1BD438); jumptable 001BCD30 case 4
1BD430:  ADD             R5, PC, R0; "Out of Memory"
1BD434:  MOV             R0, R5
1BD438:  POP             {R4-R6,R10,R11,PC}
1BD43C:  MOV             R5, #0
1BD440:  LDR             R0, =(dword_38283C - 0x1BD44C)
1BD444:  ADD             R0, PC, R0; dword_38283C
1BD448:  CMP             R6, #0
1BD44C:  MOVW            R1, #0xA005
1BD450:  ADDNE           R0, R6, #0x24 ; '$'
1BD454:  STR             R1, [R0]
1BD458:  B               loc_1BD508
1BD45C:  MOV             R6, #0
1BD460:  LDR             R0, =(dword_382840 - 0x1BD46C)
1BD464:  ADD             R4, PC, R0; dword_382840
1BD468:  LDR             R0, [R4]; ptr
1BD46C:  BL              free
1BD470:  LDR             R0, =(dword_382818 - 0x1BD480)
1BD474:  LDR             R1, =(byte_8F794 - 0x1BD488)
1BD478:  LDR             R0, [PC,R0]; dword_382818
1BD47C:  CMP             R0, #0
1BD480:  ADDEQ           R0, PC, R1; byte_8F794 ; s
1BD484:  BL              strdup
1BD488:  MOV             R5, R0
1BD48C:  CMP             R5, #0
1BD490:  STR             R5, [R4]
1BD494:  BNE             loc_1BD508
1BD498:  LDR             R0, =(byte_382798 - 0x1BD4A4)
1BD49C:  LDRB            R0, [PC,R0]; byte_382798
1BD4A0:  CMP             R0, #0
1BD4A4:  BEQ             loc_1BD5D8
1BD4A8:  MOV             R0, #5; sig
1BD4AC:  BL              raise
1BD4B0:  LDR             R0, =(dword_382840 - 0x1BD4BC)
1BD4B4:  LDR             R5, [PC,R0]; dword_382840
1BD4B8:  B               loc_1BD5DC
1BD4BC:  LDR             R0, =(aAlcEnumerateAl_0 - 0x1BD4C8); "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"... ...
1BD4C0:  ADD             R5, PC, R0; "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"...
1BD4C4:  MOV             R0, R5
1BD4C8:  POP             {R4-R6,R10,R11,PC}
1BD4CC:  MOV             R6, #0
1BD4D0:  LDR             R0, =(dword_382844 - 0x1BD4DC)
1BD4D4:  ADD             R4, PC, R0; dword_382844
1BD4D8:  LDR             R0, [R4]; ptr
1BD4DC:  BL              free
1BD4E0:  LDR             R0, =(dword_382820 - 0x1BD4F0)
1BD4E4:  LDR             R1, =(byte_8F794 - 0x1BD4F8)
1BD4E8:  LDR             R0, [PC,R0]; dword_382820
1BD4EC:  CMP             R0, #0
1BD4F0:  ADDEQ           R0, PC, R1; byte_8F794 ; s
1BD4F4:  BL              strdup
1BD4F8:  MOV             R5, R0
1BD4FC:  CMP             R5, #0
1BD500:  STR             R5, [R4]
1BD504:  BEQ             loc_1BD520
1BD508:  CMP             R6, #0
1BD50C:  BEQ             loc_1BD15C
1BD510:  MOV             R0, R6
1BD514:  BL              j_ALCdevice_DecRef
1BD518:  MOV             R0, R5
1BD51C:  POP             {R4-R6,R10,R11,PC}
1BD520:  LDR             R0, =(byte_382798 - 0x1BD52C)
1BD524:  LDRB            R0, [PC,R0]; byte_382798
1BD528:  CMP             R0, #0
1BD52C:  BEQ             loc_1BD5E8
1BD530:  MOV             R0, #5; sig
1BD534:  BL              raise
1BD538:  LDR             R0, =(dword_382844 - 0x1BD544)
1BD53C:  LDR             R5, [PC,R0]; dword_382844
1BD540:  B               loc_1BD5EC
1BD544:  LDR             R0, =(unk_3827A0 - 0x1BD550)
1BD548:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD54C:  BL              j_LeaveCriticalSection
1BD550:  LDR             R0, =(unk_382834 - 0x1BD560)
1BD554:  LDR             R1, =(sub_1BBB90 - 0x1BD564)
1BD558:  ADD             R0, PC, R0; unk_382834 ; once_control
1BD55C:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BD560:  BL              pthread_once
1BD564:  LDR             R0, =(unk_3827A0 - 0x1BD570)
1BD568:  ADD             R4, PC, R0; unk_3827A0
1BD56C:  MOV             R0, R4; mutex
1BD570:  BL              j_EnterCriticalSection
1BD574:  LDR             R0, =(dword_382818 - 0x1BD580)
1BD578:  ADD             R5, PC, R0; dword_382818
1BD57C:  LDR             R0, [R5]; ptr
1BD580:  BL              free
1BD584:  LDR             R0, =(dword_3827A8 - 0x1BD594)
1BD588:  LDR             R1, =(dword_38281C - 0x1BD5A0)
1BD58C:  ADD             R0, PC, R0; dword_3827A8
1BD590:  LDR             R2, [R0,#(off_3827B4 - 0x3827A8)]
1BD594:  MOV             R0, #0
1BD598:  STR             R0, [PC,R1]; dword_38281C
1BD59C:  STR             R0, [R5]
1BD5A0:  MOV             R0, #0
1BD5A4:  BLX             R2
1BD5A8:  MOV             R0, R4; mutex
1BD5AC:  BL              j_LeaveCriticalSection
1BD5B0:  LDR             R5, [R5]
1BD5B4:  MOV             R0, R5
1BD5B8:  POP             {R4-R6,R10,R11,PC}
1BD5BC:  LDR             R0, =(unk_3827A0 - 0x1BD5C8)
1BD5C0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD5C4:  BL              j_LeaveCriticalSection
1BD5C8:  LDR             R0, =(aAlcEnumerateAl_0 - 0x1BD5D4); "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"... ...
1BD5CC:  ADD             R5, PC, R0; "ALC_ENUMERATE_ALL_EXT ALC_ENUMERATION_E"...
1BD5D0:  MOV             R0, R5
1BD5D4:  POP             {R4-R6,R10,R11,PC}
1BD5D8:  MOV             R5, #0
1BD5DC:  LDR             R0, =(dword_38283C - 0x1BD5E8)
1BD5E0:  ADD             R0, PC, R0; dword_38283C
1BD5E4:  B               loc_1BD448
1BD5E8:  MOV             R5, #0
1BD5EC:  LDR             R0, =(dword_38283C - 0x1BD5F8)
1BD5F0:  ADD             R0, PC, R0; dword_38283C
1BD5F4:  B               loc_1BD448
