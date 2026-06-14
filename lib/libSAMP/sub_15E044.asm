; =========================================================
; Game Engine Function: sub_15E044
; Address            : 0x15E044 - 0x15E0C0
; =========================================================

15E044:  PUSH            {R4-R7,LR}
15E046:  ADD             R7, SP, #0xC
15E048:  PUSH.W          {R8}
15E04C:  SUB.W           SP, SP, #0x800
15E050:  MOV             R8, R1
15E052:  LDR             R1, =(byte_8F794 - 0x15E05C)
15E054:  MOV             R6, R2
15E056:  MOV             R4, R0
15E058:  ADD             R1, PC; byte_8F794 ; char *
15E05A:  BLX             j__ZNSt13runtime_errorC2EPKc_0; std::runtime_error::runtime_error(char const*)
15E05E:  LDR             R0, =(_ZTV13OpusException - 0x15E06A); `vtable for'OpusException ...
15E060:  MOVS            R1, #0
15E062:  MOV             R5, R4
15E064:  STR             R6, [R4,#8]
15E066:  ADD             R0, PC; `vtable for'OpusException
15E068:  STR.W           R1, [R5,#0xC]!
15E06C:  ADDS            R0, #8
15E06E:  STR             R0, [R4]
15E070:  STRD.W          R1, R1, [R4,#0x10]
15E074:  MOV             R0, R5; int
15E076:  MOV             R1, R8; s
15E078:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
15E07C:  LDR             R1, =(asc_8B87F - 0x15E082); ": " ...
15E07E:  ADD             R1, PC; ": "
15E080:  MOV             R0, R5; int
15E082:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
15E086:  MOV             R0, R6
15E088:  BLX             j_opus_strerror
15E08C:  MOV             R1, R0; s
15E08E:  MOV             R0, R5; int
15E090:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
15E094:  LDRB            R0, [R4,#0xC]
15E096:  LDR             R3, [R4,#0x14]
15E098:  LDR             R2, =(aOpusexceptionS - 0x15E0A4); "OpusException - %s" ...
15E09A:  LSLS            R0, R0, #0x1F
15E09C:  IT EQ
15E09E:  ADDEQ           R3, R5, #1
15E0A0:  ADD             R2, PC; "OpusException - %s"
15E0A2:  ADD.W           R0, SP, #0x810+s
15E0A6:  BL              sub_15E20C
15E0AA:  ADD.W           R1, SP, #0x810+s; s
15E0AE:  MOVS            R0, #4; int
15E0B0:  BL              sub_159B70
15E0B4:  MOV             R0, R4
15E0B6:  ADD.W           SP, SP, #0x800
15E0BA:  POP.W           {R8}
15E0BE:  POP             {R4-R7,PC}
