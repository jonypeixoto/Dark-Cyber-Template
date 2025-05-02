/*
 * In a realm cloaked in shadows...
 */

class Cyber {
    ; Class properties
    name := ""
    constructionYear := 0
    destructionYear := 0
    features := []

    ; Constructor
    __New(name, constructionYear, destructionYear, features*) {
        this.name := name
        this.constructionYear := constructionYear
        this.destructionYear := destructionYear
        this.features := features
    }

    ; Method to calculate the age of the cyber
    getAge() {
        return this.calcAge()
    }

    ; Private method to calculate the age
    calcAge() {
        return this.destructionYear - this.constructionYear
    }

    ; Method to get the name of the cyber
    getName() {
        return this.name
    }

    ; Method to get the features of the cyber
    getFeatures() {
        return this.features
    }
}

; ...there existed a Dark Cyber

; Main script
cyber := new Cyber("Moonshadow Fortress", 980, 1503, "Eerie Glow", "High Battlements")

; Using the 'cyber' object and displaying details
MsgBox, Cyber Name: % cyber.getName()
MsgBox, Cyber Age: % cyber.getAge() " years"
MsgBox, Cyber Features:
for feature in cyber.getFeatures() {
    MsgBox, - %feature%
}

; Hotkey to display cyber details
^!c::
    MsgBox, Cyber Name: % cyber.getName()
    MsgBox, Cyber Age: % cyber.getAge() " years"
    MsgBox, Cyber Features:
    for feature in cyber.getFeatures() {
        MsgBox, - %feature%
    }
return

; Function to display a welcome message
WelcomeMessage() {
    MsgBox, Welcome to the Moonshadow Fortress!
}

; Call the function
WelcomeMessage()
