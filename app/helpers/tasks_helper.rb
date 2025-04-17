module TasksHelper
    def status_class(status)
      case status
      when "pendiente"
        "bg-yellow-100 text-yellow-800 px-2 py-1 rounded"
      when "en progreso"
        "bg-blue-100 text-blue-800 px-2 py-1 rounded"
      when "finalizada"
        "bg-green-100 text-green-800 px-2 py-1 rounded"
      else
        ""
      end
    end
  
    def next_status_label(current_status)
      case current_status
      when "pendiente"
        "⏳ Marcar en progreso"
      when "en progreso"
        "✅ Marcar como finalizada"
      when "finalizada"
        "🔁 Revertir a pendiente"
      else
        "🔁 Cambiar estado"
      end
    end

    def task_status_icon(status)
        case status
        when "pendiente"
          "⏳"
        when "en progreso"
          "🔧"
        when "finalizada"
          "✅"
        else
          "❓"
        end
      end
    
  end
  