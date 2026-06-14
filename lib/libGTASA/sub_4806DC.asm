; =========================================================
; Game Engine Function: sub_4806DC
; Address            : 0x4806DC - 0x4806F6
; =========================================================

4806DC:  PUSH            {R4,R6,R7,LR}
4806DE:  ADD             R7, SP, #8
4806E0:  MOV             R4, R0
4806E2:  LDR             R0, [R4]
4806E4:  LDR             R1, [R0,#8]
4806E6:  MOV             R0, R4
4806E8:  BLX             R1
4806EA:  MOV             R0, R4
4806EC:  BLX             j__Z12jpeg_destroyP18jpeg_common_struct; jpeg_destroy(jpeg_common_struct *)
4806F0:  MOVS            R0, #1; int
4806F2:  BLX             exit
