import Foundation

func createSampleTour() -> Tour {
    // Sample Members
    let member1 = Members(name: "Alice Johnson", title: "Lead Singer", phone: "555-123-4567", email: "alice@example.com")
    let member2 = Members(name: "Bob Smith", title: "Guitarist", phone: "555-987-6543", email: "bob@example.com")
    
    // Sample Venues
    let venue1 = Venue(name: "Madison Square Garden", address: "4 Pennsylvania Plaza, New York, NY 10001", dayType: "Show Day")
    let venue2 = Venue(name: "Staples Center", address: "1111 S Figueroa St, Los Angeles, CA 90015", dayType: "Show Day")
    
    // Sample Notes
    let note1 = Note(title: "Reminder", note: "The bus leaves right after the show.")
    let note2 = Note(title: "Sound Check", note: "Sound check starts at 2 PM.")
    
    // Sample Schedule Events
    let schedEvent1 = SchedEvent(time: "3:30 AM - 3:40 AM", title: "LOBBY CALL JAMES/EDDIE", icon: "clock")
    let schedEvent2 = SchedEvent(time: "7:00 AM", title: "LOBBY CALL KEVIN", icon: "clock")
    let schedEvent3 = SchedEvent(time: "7:00 AM", title: "LOBBY CALL", icon: "clock")
    let schedEvent4 = SchedEvent(time: "2:00 PM", title: "MXP to LAS", icon: "airplane")
    let schedEvent5 = SchedEvent(time: "8:00 PM", title: "LOBBY CALL JOSH", icon: "clock")
    let schedEvent6 = SchedEvent(time: "8:00 PM", title: "TRANSFER TO THE HOTEL", icon: "clock")
    let schedEvent7 = SchedEvent(time: "8:00 PM", title: "ALESSO (120 MIN)", icon: "clock")
    let schedEvent8 = SchedEvent(time: "8:00 PM", title: "MXP to ORD", icon: "airplane")
    let schedEvent9 = SchedEvent(time: "8:00 PM", title: "MXP to ARN", icon: "airplane")
    let schedEvent10 = SchedEvent(time: "8:00 PM", title: "LAS to DCA", icon: "airplane")
    
    // Sample Hotels
    let hotel1 = Hotel(name: "The Manhattan Royale", address: "123 Fifth Avenue, New York, NY 10010", distance: "0.5 mi to venue")
    let hotel2 = Hotel(name: "Empire Grand Hotel", address: "456 Broadway, New York, NY 10012", distance: "0.3 mi to venue")
    
    // Sample Contacts
    let contact1 = Contact(name: "John Doe", title: "Tour Manager", phone: "555-123-4567", email: "johndoe@example.com")
    let contact2 = Contact(name: "Jane Smith", title: "Venue Coordinator", phone: "555-987-6543", email: "janesmith@example.com")
    
    // Sample Documents
    let document1 = Documents(fileName: "dinner menu.pdf", uploadDate: "Uploaded on 4/24/24, 11:04AM")
    let document2 = Documents(fileName: "MSG_Venue_tech_pack.pdf", uploadDate: "Uploaded on 4/24/24, 11:04AM")
    let document3 = Documents(fileName: "MSG_rigging_plot.pdf", uploadDate: "Uploaded on 4/24/24, 11:04AM")
    
    // Sample Tour Dates
    let tourDate1 = TourDate(
        date: Date(),
        venues: [venue1],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4, schedEvent5, schedEvent6, schedEvent7, schedEvent8, schedEvent9, schedEvent10],
        hotels: [hotel1, hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate2 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 1, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate3 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 2, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate4 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 3, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate5 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 4, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate6 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 5, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate7 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 6, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate8 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 7, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate9 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 8, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    let tourDate10 = TourDate(
        date: Calendar.current.date(byAdding: .day, value: 9, to: Date())!,
        venues: [venue2],
        notes: [note1],
        schedule: [schedEvent1, schedEvent2, schedEvent3, schedEvent4],
        hotels: [hotel2],
        contacts: [contact1, contact2],
        documents: [document1, document2, document3]
    )
    
    // Create Tour
    let sampleTour = Tour(
        id: UUID().uuidString,
        dates: [
            tourDate1, tourDate2, tourDate3, tourDate4, tourDate5,
            tourDate6, tourDate7, tourDate8, tourDate9, tourDate10
        ],
        members: [member1, member2]
    )
    
    return sampleTour
}
