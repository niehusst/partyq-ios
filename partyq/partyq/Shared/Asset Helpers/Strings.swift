import Foundation

enum Strings {
    // party connect
    static let joinParty = NSLocalizedString("Join Party", comment: "button text to join a party")
    static let startParty = NSLocalizedString("Start Party", comment: "button text to start a party")

    // spotify login
    static let info = NSLocalizedString("INFO", comment: "title for text box")
    static let partyStartRequirements = NSLocalizedString("Starting a party requires you to have the Spotify mobile app downloaded on this device and that you are logged into it with a Spotify premium account.", comment: "info text explaining requirements for starting a party")
    static let whyIsThis = NSLocalizedString("WHY IS THIS?", comment: "button text for opening about screen")
    static let authWithSpotify = NSLocalizedString("Authenticate with Spotify", comment: "button text for authenticating this app with spotify")

    // party join
    static let submit = NSLocalizedString("SUBMIT", comment: "button text for submitting form data")
    static let partyCodeInfo = NSLocalizedString("Enter your host's 4-digit code to join their party.", comment: "explanation text of how party code works")
    static let codePlaceholder = NSLocalizedString("e.g. 1234", comment: "placeholder text for a text field for entering a 4-digit number")
    static let toastCodeError = NSLocalizedString("Code must be 4 digits", comment: "error toast text explaining form number field must be exactly 4 digits long")
    static let searchingForParty = NSLocalizedString("Searching for Party...", comment: "loading screen text while searching for a party to join")
    static let stopSearching = NSLocalizedString("STOP SEARCHING", comment: "button text to stop searching for a party")
    static let toastSearchError = NSLocalizedString("Party not found", comment: "error text for toast when party search times out")
}
