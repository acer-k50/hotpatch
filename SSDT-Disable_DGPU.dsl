// For disabling the discrete GPU

DefinitionBlock ("", "SSDT", 2, "hack", "D-DGPU", 0)
{
    External (_SB_.PCI0.RP01.PXSX._OFF, MethodObj)

    Device (DGPU)
    {
        Name (_HID, "DGPU1000")
        Method (_INI, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.RP01.PXSX._OFF)) { \_SB.PCI0.RP01.PXSX._OFF () }
        }
    }
}
//EOF
