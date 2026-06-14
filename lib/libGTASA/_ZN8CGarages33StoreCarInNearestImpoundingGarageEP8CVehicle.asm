; =========================================================
; Game Engine Function: _ZN8CGarages33StoreCarInNearestImpoundingGarageEP8CVehicle
; Address            : 0x3147F4 - 0x31494E
; =========================================================

3147F4:  PUSH            {R4,R5,R7,LR}
3147F6:  ADD             R7, SP, #8
3147F8:  MOV             R12, R0
3147FA:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x314800)
3147FC:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
3147FE:  LDR             R0, [R0]; CGarages::NumGarages ...
314800:  LDR.W           LR, [R0]; CGarages::NumGarages
314804:  CMP.W           LR, #0
314808:  BEQ             locret_314894
31480A:  LDR             R1, =(_ZN8CGarages8aGaragesE_ptr - 0x31481A)
31480C:  MOVS            R3, #0
31480E:  VLDR            S0, =100000.0
314812:  MOV.W           R2, #0xFFFFFFFF
314816:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
314818:  LDR             R1, [R1]; CGarages::aGarages ...
31481A:  LDRB.W          R0, [R1,#0x4C]
31481E:  SUBS            R0, #0x21 ; '!'
314820:  CMP             R0, #2
314822:  BHI             loc_314860
314824:  LDR.W           R0, [R12,#0x14]
314828:  VLDR            D16, [R1]
31482C:  ADD.W           R4, R0, #0x30 ; '0'
314830:  CMP             R0, #0
314832:  IT EQ
314834:  ADDEQ.W         R4, R12, #4
314838:  VLDR            D17, [R4]
31483C:  VSUB.F32        D16, D17, D16
314840:  VMUL.F32        D1, D16, D16
314844:  VADD.F32        S2, S2, S3
314848:  VSQRT.F32       S2, S2
31484C:  VCMPE.F32       S2, S0
314850:  VMRS            APSR_nzcv, FPSCR
314854:  VMIN.F32        D2, D1, D0
314858:  VMOV            D0, D2
31485C:  IT LT
31485E:  MOVLT           R2, R3
314860:  ADDS            R3, #1
314862:  ADDS            R1, #0xD8
314864:  CMP             R3, LR
314866:  BCC             loc_31481A
314868:  CMP.W           R2, #0xFFFFFFFF
31486C:  IT LE
31486E:  POPLE           {R4,R5,R7,PC}
314870:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x314878)
314872:  MOVS            R1, #0xD8
314874:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
314876:  LDR             R0, [R0]; CGarages::aGarages ...
314878:  MLA.W           R0, R2, R1, R0
31487C:  LDRB.W          R0, [R0,#0x4C]
314880:  SUBS            R0, #0x11
314882:  UXTB            R1, R0
314884:  CMP             R1, #0x1C
314886:  BHI             loc_314896
314888:  LDR             R1, =(unk_60FE70 - 0x314890)
31488A:  SXTB            R0, R0
31488C:  ADD             R1, PC; unk_60FE70
31488E:  LDR.W           R0, [R1,R0,LSL#2]
314892:  B               loc_314898
314894:  POP             {R4,R5,R7,PC}
314896:  MOVS            R0, #0
314898:  LDR             R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x31489E)
31489A:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
31489C:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
31489E:  ADD.W           R2, R1, R0,LSL#8
3148A2:  LDRH.W          R1, [R2,#0x52]
3148A6:  LDRH.W          R3, [R2,#0x92]
3148AA:  LDRH            R2, [R2,#0x12]
3148AC:  CMP             R1, #0
3148AE:  IT NE
3148B0:  MOVNE           R1, #1
3148B2:  CMP             R2, #0
3148B4:  IT NE
3148B6:  ADDNE           R1, #1
3148B8:  CMP             R3, #0
3148BA:  IT NE
3148BC:  ADDNE           R1, #1
3148BE:  CMP             R1, #3
3148C0:  BNE             loc_314936
3148C2:  LDR             R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x3148C8)
3148C4:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
3148C6:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
3148C8:  ADD.W           R1, R1, R0,LSL#8
3148CC:  ADD.W           R2, R1, #0x80
3148D0:  ADD.W           R3, R1, #0x90
3148D4:  VLD1.32         {D16-D17}, [R2]
3148D8:  ADD.W           R2, R1, #0x40 ; '@'
3148DC:  ADD.W           R5, R1, #0xA0
3148E0:  ADD.W           LR, R1, #0x70 ; 'p'
3148E4:  ADD.W           R4, R1, #0x60 ; '`'
3148E8:  VLD1.32         {D24-D25}, [R3]
3148EC:  ADD.W           R3, R1, #0x50 ; 'P'
3148F0:  VLD1.32         {D28-D29}, [R5]
3148F4:  ADD.W           R5, R1, #0xB0
3148F8:  VLD1.32         {D18-D19}, [R2]
3148FC:  VLD1.32         {D20-D21}, [LR]
314900:  VLD1.32         {D22-D23}, [R4]
314904:  VLD1.32         {D26-D27}, [R3]
314908:  VLD1.32         {D30-D31}, [R5]
31490C:  VST1.32         {D16-D17}, [R2]
314910:  ADD.W           R2, R1, #0x30 ; '0'
314914:  VST1.32         {D20-D21}, [R2]
314918:  ADD.W           R2, R1, #0x20 ; ' '
31491C:  VST1.32         {D22-D23}, [R2]
314920:  VST1.32         {D24-D25}, [R3]
314924:  VST1.32         {D28-D29}, [R4]
314928:  VST1.32         {D30-D31}, [LR]
31492C:  VST1.32         {D18-D19}, [R1]!
314930:  VST1.32         {D26-D27}, [R1]
314934:  MOVS            R1, #2
314936:  LDR             R2, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x31493C)
314938:  ADD             R2, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
31493A:  LDR             R2, [R2]; CGarages::aCarsInSafeHouse ...
31493C:  ADD.W           R0, R2, R0,LSL#8
314940:  ADD.W           R0, R0, R1,LSL#6; this
314944:  MOV             R1, R12; CVehicle *
314946:  POP.W           {R4,R5,R7,LR}
31494A:  B.W             _ZN10CStoredCar8StoreCarEP8CVehicle; CStoredCar::StoreCar(CVehicle *)
