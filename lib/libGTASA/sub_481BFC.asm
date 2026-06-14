; =========================================================
; Game Engine Function: sub_481BFC
; Address            : 0x481BFC - 0x481C28
; =========================================================

481BFC:  PUSH            {R4,R5,R7,LR}
481BFE:  ADD             R7, SP, #8
481C00:  MOVS            R1, #1
481C02:  MOV             R4, R0
481C04:  BL              sub_481B0E
481C08:  MOV             R0, R4
481C0A:  MOVS            R1, #0
481C0C:  MOVS            R5, #0
481C0E:  BL              sub_481B0E
481C12:  LDR             R1, [R4,#4]; this
481C14:  MOV             R0, R4; int
481C16:  MOVS            R2, #0x54 ; 'T'
481C18:  BLX             j__Z15jpeg_free_smallP18jpeg_common_structPvj; jpeg_free_small(jpeg_common_struct *,void *,uint)
481C1C:  STR             R5, [R4,#4]
481C1E:  MOV             R0, R4
481C20:  POP.W           {R4,R5,R7,LR}
481C24:  B.W             j_j__Z13jpeg_mem_termP18jpeg_common_struct; j_jpeg_mem_term(jpeg_common_struct *)
