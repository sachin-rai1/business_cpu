import 'package:get/get.dart';

import '../modules/Accounts/bindings/accounts_binding.dart';
import '../modules/Accounts/fromSales/bindings/from_sales_binding.dart';
import '../modules/Accounts/fromSales/views/from_sales_view.dart';
import '../modules/Accounts/newSales/bindings/new_sales_binding.dart';
import '../modules/Accounts/newSales/views/new_sales_view.dart';
import '../modules/Accounts/views/accounts_view.dart';
import '../modules/Announcements/bindings/announcements_binding.dart';
import '../modules/Announcements/views/announcements_view.dart';
import '../modules/Chat/bindings/chat_binding.dart';
import '../modules/Chat/views/chat_view.dart';
import '../modules/Feedback/bindings/feedback_binding.dart';
import '../modules/Feedback/views/feedback_view.dart';
import '../modules/Greetings/bindings/greetings_binding.dart';
import '../modules/Greetings/views/greetings_view.dart';
import '../modules/Hiring/bindings/hiring_binding.dart';
import '../modules/Hiring/views/hiring_view.dart';
import '../modules/Intranet/bindings/intranet_binding.dart';
import '../modules/Intranet/views/intranet_view.dart';
import '../modules/Inventory/bindings/inventory_binding.dart';
import '../modules/Inventory/views/inventory_view.dart';
import '../modules/Lead/bindings/lead_binding.dart';
import '../modules/Lead/views/lead_view.dart';
import '../modules/LeaveApplication/bindings/leave_application_binding.dart';
import '../modules/LeaveApplication/views/leave_application_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Masters/CustomerMaster/AddCustomer/bindings/add_customer_binding.dart';
import '../modules/Masters/CustomerMaster/AddCustomer/views/add_customer_view.dart';
import '../modules/Masters/CustomerMaster/ViewCustomer/bindings/view_customer_binding.dart';
import '../modules/Masters/CustomerMaster/ViewCustomer/views/view_customer_view.dart';
import '../modules/Masters/CustomerMaster/bindings/customer_master_binding.dart';
import '../modules/Masters/CustomerMaster/views/customer_master_view.dart';
import '../modules/Masters/ItemMaster/AddItem/bindings/add_item_binding.dart';
import '../modules/Masters/ItemMaster/AddItem/views/add_item_view.dart';
import '../modules/Masters/ItemMaster/ViewItem/bindings/view_item_binding.dart';
import '../modules/Masters/ItemMaster/ViewItem/views/view_item_view.dart';
import '../modules/Masters/ItemMaster/bindings/item_master_binding.dart';
import '../modules/Masters/ItemMaster/views/item_master_view.dart';
import '../modules/Masters/LeadsMaster/bindings/leads_master_binding.dart';
import '../modules/Masters/LeadsMaster/views/leads_master_view.dart';
import '../modules/Masters/TeamMembers/bindings/team_members_binding.dart';
import '../modules/Masters/TeamMembers/views/team_members_view.dart';
import '../modules/Masters/VendorMaster/AddVendor/bindings/add_vendor_binding.dart';
import '../modules/Masters/VendorMaster/AddVendor/views/add_vendor_view.dart';
import '../modules/Masters/VendorMaster/ViewVendor/bindings/view_vendor_binding.dart';
import '../modules/Masters/VendorMaster/ViewVendor/views/view_vendor_view.dart';
import '../modules/Masters/VendorMaster/bindings/vendor_master_binding.dart';
import '../modules/Masters/VendorMaster/views/vendor_master_view.dart';
import '../modules/Masters/bindings/masters_binding.dart';
import '../modules/Masters/views/masters_view.dart';
import '../modules/Purchase/Purchase_allData/bindings/purchase_all_data_binding.dart';
import '../modules/Purchase/Purchase_allData/views/purchase_all_data_view.dart';
import '../modules/Purchase/Purchase_pending/bindings/purchase_pending_binding.dart';
import '../modules/Purchase/Purchase_pending/views/purchase_pending_view.dart';
import '../modules/Purchase/Purchase_reviewed/bindings/purchase_reviewed_binding.dart';
import '../modules/Purchase/Purchase_reviewed/views/purchase_reviewed_view.dart';
import '../modules/Purchase/bindings/purchase_binding.dart';
import '../modules/Purchase/views/purchase_view.dart';
import '../modules/Quotation/AddQuote/bindings/add_quote_binding.dart';
import '../modules/Quotation/AddQuote/views/add_quote_view.dart';
import '../modules/Quotation/ViewQuote/bindings/view_quote_binding.dart';
import '../modules/Quotation/ViewQuote/views/view_quote_view.dart';
import '../modules/Quotation/bindings/quotation_binding.dart';
import '../modules/Quotation/views/quotation_view.dart';
import '../modules/Sales/bindings/sales_binding.dart';
import '../modules/Sales/views/sales_view.dart';
import '../modules/SelectItems/bindings/select_items_binding.dart';
import '../modules/SelectItems/views/select_items_view.dart';
import '../modules/Settings/bindings/settings_binding.dart';
import '../modules/Settings/views/settings_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/TaskDelegation/TaskAssignToMe/bindings/task_assign_to_me_binding.dart';
import '../modules/TaskDelegation/TaskAssignToMe/views/task_assign_to_me_view.dart';
import '../modules/TaskDelegation/TaskAssignToOthers/bindings/task_assign_to_others_binding.dart';
import '../modules/TaskDelegation/TaskAssignToOthers/views/task_assign_to_others_view.dart';
import '../modules/TaskDelegation/bindings/assign_task_binding.dart';
import '../modules/TaskDelegation/views/assign_task_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/features/bindings/features_binding.dart';
import '../modules/features/views/features_view.dart';
import '../modules/manager_user/bindings/manager_user_binding.dart';
import '../modules/manager_user/views/manager_user_view.dart';
import '../modules/switch_page/bindings/switch_page_binding.dart';
import '../modules/switch_page/views/switch_page_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';
import '../modules/workspace/bindings/home_binding.dart';
import '../modules/workspace/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () =>  SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ASSIGN_TASK,
      page: () =>  AssignTaskView(),
      binding: AssignTaskBinding(),
    ),
    GetPage(
      name: _Paths.FEATURES,
      page: () =>  FeaturesView(),
      binding: FeaturesBinding(),
    ),
    GetPage(
      name: _Paths.TASK_ASSIGN_TO_ME,
      page: () => TaskAssignToMeView(),
      binding: TaskAssignToMeBinding(),
    ),
    GetPage(
      name: _Paths.TASK_ASSIGN_TO_OTHERS,
      page: () =>  TaskAssignToOthersView(),
      binding: TaskAssignToOthersBinding(),
    ),
    GetPage(
      name: _Paths.SALES,
      page: () => SalesView(),
      binding: SalesBinding(),
    ),
    GetPage(
      name: _Paths.LEAD,
      page: () => LeadView(),
      binding: LeadBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTS,
      page: () => AccountsView(),
      binding: AccountsBinding(),
      children: [
        GetPage(
          name: _Paths.FROM_SALES,
          page: () => FromSalesView(),
          binding: FromSalesBinding(),
        ),
        GetPage(
          name: _Paths.NEW_SALES,
          page: () => NewSalesView(),
          binding: NewSalesBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LEAVE_APPLICATION,
      page: () => LeaveApplicationView(),
      binding: LeaveApplicationBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE,
      page: () => PurchaseView(),
      binding: PurchaseBinding(),
      children: [
        GetPage(
          name: _Paths.PURCHASE_ALL_DATA,
          page: () => PurchaseAllDataView(),
          binding: PurchaseAllDataBinding(),
        ),
        GetPage(
          name: _Paths.PURCHASE_PENDING,
          page: () => PurchasePendingView(),
          binding: PurchasePendingBinding(),
        ),
        GetPage(
          name: _Paths.PURCHASE_REVIEWED,
          page: () => PurchaseReviewedView(),
          binding: PurchaseReviewedBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: _Paths.MANAGER_USER,
      page: () => ManagerUserView(),
      binding: ManagerUserBinding(),
    ),
    GetPage(
      name: _Paths.MASTERS,
      page: () => MastersView(),
      binding: MastersBinding(),
      children: [
        GetPage(
          name: _Paths.TEAM_MEMBERS,
          page: () => TeamMembersView(),
          binding: TeamMembersBinding(),
        ),
        GetPage(
          name: _Paths.CUSTOMER_MASTER,
          page: () => CustomerMasterView(),
          binding: CustomerMasterBinding(),
          children: [
            GetPage(
              name: _Paths.ADD_CUSTOMER,
              page: () => AddCustomerView(),
              binding: AddCustomerBinding(),
            ),
            GetPage(
              name: _Paths.VIEW_CUSTOMER,
              page: () => ViewCustomerView(),
              binding: ViewCustomerBinding(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.VENDOR_MASTER,
          page: () => VendorMasterView(),
          binding: VendorMasterBinding(),
          children: [
            GetPage(
              name: _Paths.VIEW_VENDOR,
              page: () => ViewVendorView(),
              binding: ViewVendorBinding(),
            ),
            GetPage(
              name: _Paths.ADD_VENDOR,
              page: () => AddVendorView(),
              binding: AddVendorBinding(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.ITEM_MASTER,
          page: () => ItemMasterView(),
          binding: ItemMasterBinding(),
          children: [
            GetPage(
              name: _Paths.ADD_ITEM,
              page: () => AddItemView(),
              binding: AddItemBinding(),
            ),
            GetPage(
              name: _Paths.VIEW_ITEM,
              page: () => ViewItemView(),
              binding: ViewItemBinding(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.LEADS_MASTER,
          page: () => LeadsMasterView(),
          binding: LeadsMasterBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.QUOTATION,
      page: () => QuotationView(),
      binding: QuotationBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_QUOTE,
          page: () => AddQuoteView(),
          binding: AddQuoteBinding(),
        ),
        GetPage(
          name: _Paths.VIEW_QUOTE,
          page: () => ViewQuoteView(),
          binding: ViewQuoteBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SELECT_ITEMS,
      page: () => SelectItemsView(),
      binding: SelectItemsBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SWITCH_PAGE,
      page: () => SwitchPageView(),
      binding: SwitchPageBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.GREETINGS,
      page: () =>  GreetingsView(),
      binding: GreetingsBinding(),
    ),
    GetPage(
      name: _Paths.INTRANET,
      page: () =>  IntranetView(),
      binding: IntranetBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () =>  ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.INVENTORY,
      page: () =>  InventoryView(),
      binding: InventoryBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () =>  FeedbackView(),
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: _Paths.ANNOUNCEMENTS,
      page: () =>  AnnouncementsView(),
      binding: AnnouncementsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () =>  SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.HIRING,
      page: () =>  HiringView(),
      binding: HiringBinding(),
    ),
  ];
}
