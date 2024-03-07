SAMPLE_ACTIONS = [
  {
    start_time: "12:00",
    end_time: "13:00",
    category: "study",
    day: Date.current,
    total_time: 60
  },
  {
    start_time: "15:00",
    end_time: "16:00",
    category: "game",
    day: Date.current,
    total_time: 60
  },
  {
    start_time: "18:00",
    end_time: "20:00",
    category: "game",
    day: Date.current,
    total_time: 120
  },
  {
    start_time: "18:00",
    end_time: "20:00",
    category: "study",
    day: Date.current.tomorrow,
    total_time: 120
  }
]

SAMPLE_CATEGORIES = [
  {
    category: "study",
    display_color: "#e4eb1a",
    category_total: 180
  },
  {
    category: "game",
    display_color: "#22aae0",
    category_total: 180
  }
]

SAMPLE_ACTIONS.each do |action|
  Action.create(action)
end

SAMPLE_CATEGORIES.each do |category|
  Category.create(category)
end
