import Foundation
import Alamofire
import SwiftyJSON
 
Alamofire.request("https://stepik.org/api/search-results").responseJSON { response in
    if let result = response.result.value {
        let json = JSON(result)
        print(json["url"])
        print(json["explanation"])
    }
}
 
RunLoop.main.run()