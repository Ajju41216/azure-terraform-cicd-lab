variable "connectivity" {
    type = map(object({
        name = string
        location = string
    }))
  
}