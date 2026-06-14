; =========================================================
; Game Engine Function: sub_805D4
; Address            : 0x805D4 - 0x80650
; =========================================================

805D4:  PUSH            {R4,R5,R7,LR}
805D6:  ADD             R7, SP, #8
805D8:  BL              sub_8262C
805DC:  LDR             R4, =(byte_1A49B4 - 0x805E2)
805DE:  ADD             R4, PC; byte_1A49B4
805E0:  LDRB            R1, [R4]
805E2:  CBZ             R1, loc_8060A
805E4:  BL              sub_82680
805E8:  LDR             R0, =(off_114AA4 - 0x805EE)
805EA:  ADD             R0, PC; off_114AA4
805EC:  LDR             R5, [R0]; off_1ABEE4
805EE:  BL              sub_8262C
805F2:  LDR             R5, [R5]
805F4:  CBZ             R0, loc_80604
805F6:  BL              sub_82638
805FA:  MOVS            R1, #0x64 ; 'd'
805FC:  MULS            R1, R0
805FE:  MOVS            R0, #5
80600:  BLX             R5
80602:  B               loc_8060A
80604:  MOVS            R0, #5
80606:  MOVS            R1, #0
80608:  BLX             R5
8060A:  BL              sub_82638
8060E:  LDRB            R1, [R4]
80610:  CBZ             R1, loc_8063C
80612:  MOVS            R4, #0x64 ; 'd'
80614:  CMP             R0, #0x64 ; 'd'
80616:  IT GE
80618:  MOVGE           R0, R4
8061A:  BIC.W           R0, R0, R0,ASR#31
8061E:  BL              sub_8268C
80622:  BL              sub_8262C
80626:  CBZ             R0, loc_8063C
80628:  LDR             R0, =(off_114AA4 - 0x8062E)
8062A:  ADD             R0, PC; off_114AA4
8062C:  LDR             R0, [R0]; off_1ABEE4
8062E:  LDR             R5, [R0]
80630:  BL              sub_82638
80634:  MUL.W           R1, R0, R4
80638:  MOVS            R0, #5
8063A:  BLX             R5
8063C:  BL              sub_82644
80640:  BL              sub_80300
80644:  BL              sub_82650
80648:  POP.W           {R4,R5,R7,LR}
8064C:  B.W             sub_8046C
