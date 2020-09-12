class SearchBiesController < ApplicationController

  def create
    @search_by = SearchBy.new(search_by_params)
    skills = Skill.all.map {|r| r.name}
    degrees = Degree.all.map {|r| r.name}
    if skills.include?(@search_by.skill) and degrees.include?(@search_by.degree)
      redirect_to show_skill_degree_path(id: @search_by.skill, name: @search_by.degree)
    elsif skills.include?(@search_by.skill)
      redirect_to show_skill_path(@search_by.skill)
    elsif degrees.include?(@search_by.degree)
      redirect_to show_degree_path(@search_by.degree)
    else
      redirect_back fallback_location: root_path
    end
  end

  def skill
    @search_by = SearchBy.new
    skill = Skill.find_by(name: params[:id])
    @emps = skill.employees
  end

  def degree
    @search_by = SearchBy.new
    @emps = Employee.where(degree: params[:id])
  end

  def skilldegree
    @search_by = SearchBy.new
    skill = Skill.find_by(name: params[:id])
    e1 = skill.employees
    e2 = Employee.where(degree: params[:name])
    @emps = (e1 and e2)
  end

  private

  def search_by_params
    params.require(:search_by).permit(:degree,:skill)
  end

end
