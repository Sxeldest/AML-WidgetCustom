; =========================================================
; Game Engine Function: sub_180EAC
; Address            : 0x180EAC - 0x180ECC
; =========================================================

180EAC:  CBZ             R1, locret_180ECA
180EAE:  PUSH            {R4,R6,R7,LR}
180EB0:  ADD             R7, SP, #8
180EB2:  LDRB            R0, [R1,#0x18]
180EB4:  MOV             R4, R1
180EB6:  CBZ             R0, loc_180EC0
180EB8:  LDR             R0, [R4,#0x14]; void *
180EBA:  CBZ             R0, loc_180EC0
180EBC:  BLX             j__ZdlPv; operator delete(void *)
180EC0:  MOV             R0, R4
180EC2:  POP.W           {R4,R6,R7,LR}
180EC6:  B.W             opus_decoder_destroy_0
180ECA:  BX              LR
