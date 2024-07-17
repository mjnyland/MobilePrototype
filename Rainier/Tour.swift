import Foundation
import Observation

@Observable
class Tour: Identifiable {
    var id: String
    var dates: [TourDate]
    var members: [Members]
    
    init(id: String, dates: [TourDate], members: [Members]) {
        self.id = id
        self.dates = dates
        self.members = members
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case dates
    }
}

@Observable
class Members: Identifiable{
    var id = UUID()
    var name: String
    var title: String
    var phone: String
    var email: String
    
    init(id: UUID = UUID(), name: String, title: String, phone: String, email: String) {
        self.id = id
        self.name = name
        self.title = title
        self.phone = phone
        self.email = email
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case title
        case phone
        case email
    }
}


@Observable
class TourDate: Identifiable {
    var id = UUID()
    var date: Date
    var venues: [Venue]
    var notes: [Note]
    var schedule: [SchedEvent]
    var hotels: [Hotel]
    var contacts: [Contact]
    var documents: [Documents]
    
    init(id: UUID = UUID(), date: Date, venues: [Venue], notes: [Note], schedule: [SchedEvent], hotels: [Hotel], contacts: [Contact], documents: [Documents]) {
        self.id = id
        self.date = date
        self.venues = venues
        self.notes = notes
        self.schedule = schedule
        self.hotels = hotels
        self.contacts = contacts
        self.documents = documents
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case date
        case venues
        case notes
        case schedule
        case hotels
        case contacts
    }
}

@Observable
class Venue {
    var name: String
    var address: String
    var dayType: String
    
    init(name: String, address: String, dayType: String) {
        self.name = name
        self.address = address
        self.dayType = dayType
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case address
        case dayType
    }
}

@Observable
class Note: Identifiable {
    var id = UUID()
    var title: String
    var note: String
    
    init(id: UUID = UUID(), title: String, note: String) {
        self.id = id
        self.title = title
        self.note = note
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case note
    }
}

@Observable
class SchedEvent: Identifiable {
    var id = UUID()
    var time: String
    var title: String
    var icon: String
    
    init(id: UUID = UUID(), time: String, title: String, icon: String) {
        self.id = id
        self.time = time
        self.title = title
        self.icon = icon
    }
    
    enum CodingKeys: String, CodingKey {
        case time
        case title
    }
}

@Observable
class Hotel: Identifiable {
    var id = UUID()
    var name: String
    var address: String
    var distance: String
    
    init(id: UUID = UUID(), name: String, address: String, distance: String) {
        self.id = id
        self.name = name
        self.address = address
        self.distance = distance
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case address
        case distance
    }
}

@Observable
class Contact: Identifiable {
    var id = UUID()
    var name: String
    var title: String
    var phone: String
    var email: String
    
    init(id: UUID = UUID(), name: String, title: String, phone: String, email: String) {
        self.id = id
        self.name = name
        self.title = title
        self.phone = phone
        self.email = email
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case title
        case phone
        case email
    }
}

@Observable
class Documents: Identifiable {
    var id = UUID()
    var fileName: String
    var uploadDate: String
    
    init(fileName: String, uploadDate: String) {
        self.fileName = fileName
        self.uploadDate = uploadDate
    }
}
