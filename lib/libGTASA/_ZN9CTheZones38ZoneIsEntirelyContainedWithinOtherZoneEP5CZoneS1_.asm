; =========================================================
; Game Engine Function: _ZN9CTheZones38ZoneIsEntirelyContainedWithinOtherZoneEP5CZoneS1_
; Address            : 0x42D8DA - 0x42D92A
; =========================================================

42D8DA:  LDRSH.W         R2, [R1,#0x10]
42D8DE:  LDRSH.W         R3, [R0,#0x10]
42D8E2:  CMP             R3, R2
42D8E4:  BLT             loc_42D926
42D8E6:  LDRSH.W         R2, [R1,#0x16]
42D8EA:  LDRSH.W         R3, [R0,#0x16]
42D8EE:  CMP             R3, R2
42D8F0:  BGT             loc_42D926
42D8F2:  LDRSH.W         R2, [R1,#0x12]
42D8F6:  LDRSH.W         R3, [R0,#0x12]
42D8FA:  CMP             R3, R2
42D8FC:  BLT             loc_42D926
42D8FE:  LDRSH.W         R2, [R1,#0x18]
42D902:  LDRSH.W         R3, [R0,#0x18]
42D906:  CMP             R3, R2
42D908:  BGT             loc_42D926
42D90A:  LDRSH.W         R2, [R1,#0x14]
42D90E:  LDRSH.W         R3, [R0,#0x14]
42D912:  CMP             R3, R2
42D914:  BLT             loc_42D926
42D916:  LDRSH.W         R1, [R1,#0x1A]
42D91A:  LDRSH.W         R0, [R0,#0x1A]
42D91E:  CMP             R0, R1
42D920:  ITT LE
42D922:  MOVLE           R0, #1
42D924:  BXLE            LR
42D926:  MOVS            R0, #0
42D928:  BX              LR
