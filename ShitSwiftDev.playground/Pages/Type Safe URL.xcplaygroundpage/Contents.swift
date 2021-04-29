import Foundation

// https://twitter.com/ShitSwiftDev/status/1367838328494653450
// https://twitter.com/ShitSwiftDev/status/1369566325186695168

infix operator ⠅╱╱ 

@dynamicMemberLookup struct HostName {
    let rawValue: String
    subscript(dynamicMember string: String) -> HostName {
        HostName(rawValue: rawValue + "." + string)
    }
}

struct Scheme {
    let rawValue: String
    
}

let www = HostName(rawValue: "www")
let https = Scheme(rawValue: "https")

func ⠅╱╱ (scheme: Scheme, hostName: HostName) -> URL {
    var components = URLComponents()
    components.scheme = scheme.rawValue
    components.host = hostName.rawValue
    return components.url!
}

let url = https⠅╱╱www.google.com
print(url)
