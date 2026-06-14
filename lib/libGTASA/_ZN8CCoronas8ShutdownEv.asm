; =========================================================
; Game Engine Function: _ZN8CCoronas8ShutdownEv
; Address            : 0x5A3864 - 0x5A395E
; =========================================================

5A3864:  PUSH            {R7,LR}
5A3866:  MOV             R7, SP
5A3868:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A386E)
5A386A:  ADD             R0, PC; gpCoronaTexture_ptr
5A386C:  LDR             R0, [R0]; gpCoronaTexture
5A386E:  LDR             R0, [R0]
5A3870:  CBZ             R0, loc_5A3880
5A3872:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A3876:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A387E)
5A3878:  MOVS            R1, #0
5A387A:  ADD             R0, PC; gpCoronaTexture_ptr
5A387C:  LDR             R0, [R0]; gpCoronaTexture
5A387E:  STR             R1, [R0]
5A3880:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A3886)
5A3882:  ADD             R0, PC; gpCoronaTexture_ptr
5A3884:  LDR             R0, [R0]; gpCoronaTexture
5A3886:  LDR             R0, [R0,#(dword_A25B0C - 0xA25B08)]
5A3888:  CBZ             R0, loc_5A3898
5A388A:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A388E:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A3896)
5A3890:  MOVS            R1, #0
5A3892:  ADD             R0, PC; gpCoronaTexture_ptr
5A3894:  LDR             R0, [R0]; gpCoronaTexture
5A3896:  STR             R1, [R0,#(dword_A25B0C - 0xA25B08)]
5A3898:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A389E)
5A389A:  ADD             R0, PC; gpCoronaTexture_ptr
5A389C:  LDR             R0, [R0]; gpCoronaTexture
5A389E:  LDR             R0, [R0,#(dword_A25B10 - 0xA25B08)]
5A38A0:  CBZ             R0, loc_5A38B0
5A38A2:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A38A6:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38AE)
5A38A8:  MOVS            R1, #0
5A38AA:  ADD             R0, PC; gpCoronaTexture_ptr
5A38AC:  LDR             R0, [R0]; gpCoronaTexture
5A38AE:  STR             R1, [R0,#(dword_A25B10 - 0xA25B08)]
5A38B0:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38B6)
5A38B2:  ADD             R0, PC; gpCoronaTexture_ptr
5A38B4:  LDR             R0, [R0]; gpCoronaTexture
5A38B6:  LDR             R0, [R0,#(dword_A25B14 - 0xA25B08)]
5A38B8:  CBZ             R0, loc_5A38C8
5A38BA:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A38BE:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38C6)
5A38C0:  MOVS            R1, #0
5A38C2:  ADD             R0, PC; gpCoronaTexture_ptr
5A38C4:  LDR             R0, [R0]; gpCoronaTexture
5A38C6:  STR             R1, [R0,#(dword_A25B14 - 0xA25B08)]
5A38C8:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38CE)
5A38CA:  ADD             R0, PC; gpCoronaTexture_ptr
5A38CC:  LDR             R0, [R0]; gpCoronaTexture
5A38CE:  LDR             R0, [R0,#(dword_A25B18 - 0xA25B08)]
5A38D0:  CBZ             R0, loc_5A38E0
5A38D2:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A38D6:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38DE)
5A38D8:  MOVS            R1, #0
5A38DA:  ADD             R0, PC; gpCoronaTexture_ptr
5A38DC:  LDR             R0, [R0]; gpCoronaTexture
5A38DE:  STR             R1, [R0,#(dword_A25B18 - 0xA25B08)]
5A38E0:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38E6)
5A38E2:  ADD             R0, PC; gpCoronaTexture_ptr
5A38E4:  LDR             R0, [R0]; gpCoronaTexture
5A38E6:  LDR             R0, [R0,#(dword_A25B1C - 0xA25B08)]
5A38E8:  CBZ             R0, loc_5A38F8
5A38EA:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A38EE:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38F6)
5A38F0:  MOVS            R1, #0
5A38F2:  ADD             R0, PC; gpCoronaTexture_ptr
5A38F4:  LDR             R0, [R0]; gpCoronaTexture
5A38F6:  STR             R1, [R0,#(dword_A25B1C - 0xA25B08)]
5A38F8:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A38FE)
5A38FA:  ADD             R0, PC; gpCoronaTexture_ptr
5A38FC:  LDR             R0, [R0]; gpCoronaTexture
5A38FE:  LDR             R0, [R0,#(dword_A25B20 - 0xA25B08)]
5A3900:  CBZ             R0, loc_5A3910
5A3902:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A3906:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A390E)
5A3908:  MOVS            R1, #0
5A390A:  ADD             R0, PC; gpCoronaTexture_ptr
5A390C:  LDR             R0, [R0]; gpCoronaTexture
5A390E:  STR             R1, [R0,#(dword_A25B20 - 0xA25B08)]
5A3910:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A3916)
5A3912:  ADD             R0, PC; gpCoronaTexture_ptr
5A3914:  LDR             R0, [R0]; gpCoronaTexture
5A3916:  LDR             R0, [R0,#(dword_A25B24 - 0xA25B08)]
5A3918:  CBZ             R0, loc_5A3928
5A391A:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A391E:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A3926)
5A3920:  MOVS            R1, #0
5A3922:  ADD             R0, PC; gpCoronaTexture_ptr
5A3924:  LDR             R0, [R0]; gpCoronaTexture
5A3926:  STR             R1, [R0,#(dword_A25B24 - 0xA25B08)]
5A3928:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A392E)
5A392A:  ADD             R0, PC; gpCoronaTexture_ptr
5A392C:  LDR             R0, [R0]; gpCoronaTexture
5A392E:  LDR             R0, [R0,#(dword_A25B28 - 0xA25B08)]
5A3930:  CBZ             R0, loc_5A3940
5A3932:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A3936:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A393E)
5A3938:  MOVS            R1, #0
5A393A:  ADD             R0, PC; gpCoronaTexture_ptr
5A393C:  LDR             R0, [R0]; gpCoronaTexture
5A393E:  STR             R1, [R0,#(dword_A25B28 - 0xA25B08)]
5A3940:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A3946)
5A3942:  ADD             R0, PC; gpCoronaTexture_ptr
5A3944:  LDR             R0, [R0]; gpCoronaTexture
5A3946:  LDR             R0, [R0,#(dword_A25B2C - 0xA25B08)]
5A3948:  CMP             R0, #0
5A394A:  IT EQ
5A394C:  POPEQ           {R7,PC}
5A394E:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A3952:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A395A)
5A3954:  MOVS            R1, #0
5A3956:  ADD             R0, PC; gpCoronaTexture_ptr
5A3958:  LDR             R0, [R0]; gpCoronaTexture
5A395A:  STR             R1, [R0,#(dword_A25B2C - 0xA25B08)]
5A395C:  POP             {R7,PC}
