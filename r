Cyberpunk 2077/
 └── r6/
     └── scripts/
         └── PanamRomanceOverride.reds
// PanamRomanceOverride.reds
// This script overrides gender checks for Panam romance
// Place in r6/scripts/ and reload game

@addMethod(PlayerPuppet)
public func IsMaleV() -> Bool {
    // Normally returns true only for male V
    // We override to always return true so romance flags pass
    return true;
}

@addMethod(PlayerPuppet)
public func IsFemaleV() -> Bool {
    // Keep original female check intact
    return this.GetGender() == EGender.Female;
}

// Optional: Override specific quest functions
@wrapMethod(PanamRomanceQuestController)
public func CheckRomanceEligibility() -> Bool {
    // Normally checks gender == male
    // We force it to always return true
    return true;
}
