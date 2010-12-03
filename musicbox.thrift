exception InternalError { }

struct ProfileData {
  1: i32 profileID,
  2: i32 userID,
  3: string phoneNumber,
  4: i64 registrationDate,
  5: string sessionID,
  6: string unknown,
  7: string subscriptionStatus,
  8: i32 channelID,
  9: bool firstTimeUser
}

struct PlayerData {
  1: i64 subscriptionPeriodEnd,
  2: string nextKey,
  3: i32 subscriptionNumberOfFreeStreamsLeft,
  4: i32 subscriptionNumberOfFreeTracksLeft,
  5: bool subscriptionValidForStreaming,
  6: string fileDeliveryHost,
}

struct RecordLabelData {
  1: string recordLabel,
  2: i32 recordLabelID,
  3: string recordProvider,
  4: i32 recordProviderID,
  5: string recordSublabel,
  6: i32 recordSublabelID
}

struct TrackData {
  1: string title,
  2: string artist,
  3: i32 artistID,
  4: i32 albumID,
  5: string album,
  6: string unkown1,
  7: i32 duration,
  8: string tinyAlbumCover,
  9: string smallAlbumCover,
  10: string largeAlbumCover,
  11: i32 trackID,
  12: string unknown2,
  13: i32 trackNumber,
  14: i32 volumeNumber,
  15: string unknown3,
  16: i64 salesStartDate,
  17: bool unknown4,
  18: bool unknown5,
  19: double price,
  20: string unkown6,
  21: bool unkown7,
  22: bool unknown8,
  23: string unknown9,
  24: string albumCalculatedPrice
  25: bool unknown10,
  26: i32 albumNrOfVolumes,
  27: i32 popularityThisWeek,
  28: i32 salesPriceRuleID,
  29: double searchScore,
  30: RecordLabelData recordLabel
  31: i32 unknown11,
  32: i64 streamStartDate,
}

service Profile {
  ProfileData login(1:string username, 2:string password, 3:i32 version, 4:string useragent, 5:string uuid) throws (1:InternalError ouch),

  PlayerData getNextPlayer(1:string sessionID),
}

service Music {
  list<TrackData> getTracksFromAlbum(1:i32 albumID, 2:string sessionID)
}


