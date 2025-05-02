(*
 * In a land shrouded in mystery ....
 *)

structure DarkCyber = struct
  type params = {name: string,
                 constructionYear: int,
                 destructionYear: int,
                 features: string list}
  type darkcyber = params
  fun new (c : params) : darkcyber = c
  fun duration (c : darkcyber) : int = (#destructionYear c) - (#constructionYear c)
end

(* ...there stood a Dark Cyber *)

structure EnchantedLand = struct
  val moonshadowFortress = DarkCyber.new {name="Moonshadow Fortress",
                                           constructionYear=980,
                                           destructionYear=1503,
                                           features=["Eerie Glow", "High Battlements"]}
end
