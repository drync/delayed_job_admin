Rails.application.routes.draw do
  get 'delayed_job_admin', to: 'delayed_job_admin#index', as: 'delayed_job_admin'
  get 'delayed_job_admin/restart', to: 'delayed_job_admin#restart', as: 'delayed_job_admin/restart'
  get 'delayed_job_admin/check_status', to: 'delayed_job_admin#check_status', as: 'delayed_job_admin/check_status'

  delete 'delayed_job_admin/:job_id', to: 'delayed_job_admin#destroy', as: 'delete_job_delayed_job_admin'
  put 'delayed_job_admin/retry', to: 'delayed_job_admin#retry_job', as: 'retry_job_delayed_job_admin'
  put 'delayed_job_admin/run_now', to: 'delayed_job_admin#run_job_now', as: 'run_job_now_delayed_job_admin'
end
