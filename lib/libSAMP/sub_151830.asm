; =========================================================
; Game Engine Function: sub_151830
; Address            : 0x151830 - 0x15187A
; =========================================================

151830:  PUSH            {R4-R7,LR}
151832:  ADD             R7, SP, #0xC
151834:  PUSH.W          {R11}
151838:  LDR             R6, =(_ZTV12ChannelSound - 0x15184A); `vtable for'ChannelSound ...
15183A:  MOV             R4, R0
15183C:  LDRD.W          R0, LR, [R7,#arg_0]
151840:  MOVS            R5, #0
151842:  LDR.W           R12, [R7,#arg_8]
151846:  ADD             R6, PC; `vtable for'ChannelSound
151848:  STR             R0, [R4,#0x20]
15184A:  ADD.W           R0, R6, #8
15184E:  STRD.W          R5, R5, [R4,#0x18]
151852:  STRB            R5, [R4,#0x16]
151854:  STRB.W          LR, [R4,#0x15]
151858:  STRB            R5, [R4,#0x14]
15185A:  STRH            R5, [R4,#0x12]
15185C:  STRB            R3, [R4,#0x11]
15185E:  STRB            R2, [R4,#0x10]
151860:  STRD.W          R0, R5, [R4]
151864:  STRD.W          R1, R12, [R4,#8]
151868:  BL              sub_17E2E4
15186C:  STRD.W          R0, R5, [R4,#0x24]
151870:  MOV             R0, R4
151872:  STR             R5, [R4,#0x2C]
151874:  POP.W           {R11}
151878:  POP             {R4-R7,PC}
