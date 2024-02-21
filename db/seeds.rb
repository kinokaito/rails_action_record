SAMPLE_ACTIONS = [
  {
    start_time: "12:00",
    end_time: "13:00",
    category: "study",
    day: "2024-2-20",
    total_time: 60
  },
  {
    start_time: "15:00",
    end_time: "16:00",
    category: "game",
    day: "2024-2-20",
    total_time: 60
  },
  {
    start_time: "18:00",
    end_time: "20:00",
    category: "game",
    day: "2024-2-20",
    total_time: 120
  },
  {
    start_time: "18:00",
    end_time: "20:00",
    category: "study",
    day: "2024-2-21",
    total_time: 120
  }
]

SAMPLE_ACTIONS.each do |action|
  Action.create(action)
end