/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT6.aml, Fri Jun 25 18:34:55 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000007AA (1962)
 *     Revision         0x02
 *     Checksum         0xE6
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CPPC, IntObj)
    External (_PR_.CPU0, DeviceObj)
    External (_SB_.OSCP, UnknownObj)
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)
    External (TCNT, IntObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_PR.CPPC) /* External reference */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If ((\_SB.OSCP & 0x0400))
            {
                Return (TPSS) /* \_PR_.CPU0.TPSS */
            }
            Else
            {
                Return (LPSS) /* \_PR_.CPU0.LPSS */
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x00000FA1, 
                0x00017318, 
                0x0000000A, 
                0x0000000A, 
                0x0000FF00, 
                0x0000FF00
            }, 

            Package (0x06)
            {
                0x00000FA0, 
                0x00017318, 
                0x0000000A, 
                0x0000000A, 
                0x00002800, 
                0x00002800
            }, 

            Package (0x06)
            {
                0x00000ED8, 
                0x0001588C, 
                0x0000000A, 
                0x0000000A, 
                0x00002600, 
                0x00002600
            }, 

            Package (0x06)
            {
                0x00000DAC, 
                0x000130B6, 
                0x0000000A, 
                0x0000000A, 
                0x00002300, 
                0x00002300
            }, 

            Package (0x06)
            {
                0x00000CE4, 
                0x0001188E, 
                0x0000000A, 
                0x0000000A, 
                0x00002100, 
                0x00002100
            }, 

            Package (0x06)
            {
                0x00000C1C, 
                0x0001013B, 
                0x0000000A, 
                0x0000000A, 
                0x00001F00, 
                0x00001F00
            }, 

            Package (0x06)
            {
                0x00000B54, 
                0x0000EAD5, 
                0x0000000A, 
                0x0000000A, 
                0x00001D00, 
                0x00001D00
            }, 

            Package (0x06)
            {
                0x00000A28, 
                0x0000CC56, 
                0x0000000A, 
                0x0000000A, 
                0x00001A00, 
                0x00001A00
            }, 

            Package (0x06)
            {
                0x00000960, 
                0x0000B7FA, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x0000A47A, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x00008740, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x000075C7, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x0000650E, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00005517, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x00003FD5, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x000031AC, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }, 

            Name (TPSS, Package (0x22)
            {
                Package (0x06)
                {
                    0x00000FA1, 
                    0x00017318, 
                    0x0000000A, 
                    0x0000000A, 
                    0x0000FF00, 
                    0x0000FF00
                }, 

                Package (0x06)
                {
                    0x00000FA0, 
                    0x00017318, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002800, 
                    0x00002800
                }, 

                Package (0x06)
                {
                    0x00000F3C, 
                    0x000163DE, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002700, 
                    0x00002700
                }, 

                Package (0x06)
                {
                    0x00000ED8, 
                    0x0001588C, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002600, 
                    0x00002600
                }, 

                Package (0x06)
                {
                    0x00000E74, 
                    0x000149D4, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002500, 
                    0x00002500
                }, 

                Package (0x06)
                {
                    0x00000E10, 
                    0x00013EED, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002400, 
                    0x00002400
                }, 

                Package (0x06)
                {
                    0x00000DAC, 
                    0x000130B6, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002300, 
                    0x00002300
                }, 

                Package (0x06)
                {
                    0x00000D48, 
                    0x00012648, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002200, 
                    0x00002200
                }, 

                Package (0x06)
                {
                    0x00000CE4, 
                    0x0001188E, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002100, 
                    0x00002100
                }, 

                Package (0x06)
                {
                    0x00000C80, 
                    0x00010E79, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00002000, 
                    0x00002000
                }, 

                Package (0x06)
                {
                    0x00000C1C, 
                    0x0001013B, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001F00, 
                    0x00001F00
                }, 

                Package (0x06)
                {
                    0x00000BB8, 
                    0x0000F78C, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001E00, 
                    0x00001E00
                }, 

                Package (0x06)
                {
                    0x00000B54, 
                    0x0000EAD5, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001D00, 
                    0x00001D00
                }, 

                Package (0x06)
                {
                    0x00000AF0, 
                    0x0000E18A, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001C00, 
                    0x00001C00
                }, 

                Package (0x06)
                {
                    0x00000A8C, 
                    0x0000D53E, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001B00, 
                    0x00001B00
                }, 

                Package (0x06)
                {
                    0x00000A28, 
                    0x0000CC56, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001A00, 
                    0x00001A00
                }, 

                Package (0x06)
                {
                    0x000009C4, 
                    0x0000C080, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001900, 
                    0x00001900
                }, 

                Package (0x06)
                {
                    0x00000960, 
                    0x0000B7FA, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001800, 
                    0x00001800
                }, 

                Package (0x06)
                {
                    0x000008FC, 
                    0x0000ACA1, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001700, 
                    0x00001700
                }, 

                Package (0x06)
                {
                    0x00000898, 
                    0x0000A47A, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001600, 
                    0x00001600
                }, 

                Package (0x06)
                {
                    0x00000834, 
                    0x00009989, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001500, 
                    0x00001500
                }, 

                Package (0x06)
                {
                    0x000007D0, 
                    0x000091C0, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001400, 
                    0x00001400
                }, 

                Package (0x06)
                {
                    0x0000076C, 
                    0x00008740, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001300, 
                    0x00001300
                }, 

                Package (0x06)
                {
                    0x00000708, 
                    0x00007FDA, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001200, 
                    0x00001200
                }, 

                Package (0x06)
                {
                    0x000006A4, 
                    0x000075C7, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001100, 
                    0x00001100
                }, 

                Package (0x06)
                {
                    0x00000640, 
                    0x00006EB4, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00001000, 
                    0x00001000
                }, 

                Package (0x06)
                {
                    0x000005DC, 
                    0x0000650E, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000F00, 
                    0x00000F00
                }, 

                Package (0x06)
                {
                    0x00000578, 
                    0x00005E53, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000E00, 
                    0x00000E00
                }, 

                Package (0x06)
                {
                    0x00000514, 
                    0x00005517, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000D00, 
                    0x00000D00
                }, 

                Package (0x06)
                {
                    0x000004B0, 
                    0x00004EB8, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000C00, 
                    0x00000C00
                }, 

                Package (0x06)
                {
                    0x0000044C, 
                    0x000045E4, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000B00, 
                    0x00000B00
                }, 

                Package (0x06)
                {
                    0x000003E8, 
                    0x00003FD5, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000A00, 
                    0x00000A00
                }, 

                Package (0x06)
                {
                    0x00000384, 
                    0x00003767, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000900, 
                    0x00000900
                }, 

                Package (0x06)
                {
                    0x00000320, 
                    0x000031AC, 
                    0x0000000A, 
                    0x0000000A, 
                    0x00000800, 
                    0x00000800
                }
            })
        })
        Zero
        0x00001800
        0x00001800
        Package (0x06)
        {
            0x000008FC, 
            0x0000ACA1, 
            0x0000000A, 
            0x0000000A, 
            0x00001700, 
            0x00001700
        }

        Package (0x06)
        {
            0x00000898, 
            0x0000A47A, 
            0x0000000A, 
            0x0000000A, 
            0x00001600, 
            0x00001600
        }

        Package (0x06)
        {
            0x00000834, 
            0x00009989, 
            0x0000000A, 
            0x0000000A, 
            0x00001500, 
            0x00001500
        }

        Package (0x06)
        {
            0x000007D0, 
            0x000091C0, 
            0x0000000A, 
            0x0000000A, 
            0x00001400, 
            0x00001400
        }

        Package (0x06)
        {
            0x0000076C, 
            0x00008740, 
            0x0000000A, 
            0x0000000A, 
            0x00001300, 
            0x00001300
        }

        Package (0x06)
        {
            0x00000708, 
            0x00007FDA, 
            0x0000000A, 
            0x0000000A, 
            0x00001200, 
            0x00001200
        }

        Package (0x06)
        {
            0x000006A4, 
            0x000075C7, 
            0x0000000A, 
            0x0000000A, 
            0x00001100, 
            0x00001100
        }

        Package (0x06)
        {
            0x00000640, 
            0x00006EB4, 
            0x0000000A, 
            0x0000000A, 
            0x00001000, 
            0x00001000
        }

        Package (0x06)
        {
            0x000005DC, 
            0x0000650E, 
            0x0000000A, 
            0x0000000A, 
            0x00000F00, 
            0x00000F00
        }

        Package (0x06)
        {
            0x00000578, 
            0x00005E53, 
            0x0000000A, 
            0x0000000A, 
            0x00000E00, 
            0x00000E00
        }

        Package (0x06)
        {
            0x00000514, 
            0x00005517, 
            0x0000000A, 
            0x0000000A, 
            0x00000D00, 
            0x00000D00
        }

        Package (0x06)
        {
            0x000004B0, 
            0x00004EB8, 
            0x0000000A, 
            0x0000000A, 
            0x00000C00, 
            0x00000C00
        }

        Package (0x06)
        {
            0x0000044C, 
            0x000045E4, 
            0x0000000A, 
            0x0000000A, 
            0x00000B00, 
            0x00000B00
        }

        Package (0x06)
        {
            0x000003E8, 
            0x00003FD5, 
            0x0000000A, 
            0x0000000A, 
            0x00000A00, 
            0x00000A00
        }

        Package (0x06)
        {
            0x00000384, 
            0x00003767, 
            0x0000000A, 
            0x0000000A, 
            0x00000900, 
            0x00000900
        }

        Package (0x06)
        {
            0x00000320, 
            0x000031AC, 
            0x0000000A, 
            0x0000000A, 
            0x00000800, 
            0x00000800
        }

        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (!PSDF)
            {
                DerefOf (HPSD [Zero]) [0x04] = TCNT /* External reference */
                DerefOf (SPSD [Zero]) [0x04] = TCNT /* External reference */
                PSDF = Ones
            }

            If ((PDC0 & 0x0800))
            {
                Return (HPSD) /* \_PR_.CPU0.HPSD */
            }

            Return (SPSD) /* \_PR_.CPU0.SPSD */
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

